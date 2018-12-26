Drupal.locale = { 'strings': {"":{"Added to cart":"Added to cart","Free shipping":"Free shipping"}} };;
(function ($) {

/**
 * Attaches sticky table headers.
 */
Drupal.behaviors.tableHeader = {
  attach: function (context, settings) {
    if (!$.support.positionFixed) {
      return;
    }

    $('table.sticky-enabled', context).once('tableheader', function () {
      $(this).data("drupal-tableheader", new Drupal.tableHeader(this));
    });
  }
};

/**
 * Constructor for the tableHeader object. Provides sticky table headers.
 *
 * @param table
 *   DOM object for the table to add a sticky header to.
 */
Drupal.tableHeader = function (table) {
  var self = this;

  this.originalTable = $(table);
  this.originalHeader = $(table).children('thead');
  this.originalHeaderCells = this.originalHeader.find('> tr > th');
  this.displayWeight = null;

  // React to columns change to avoid making checks in the scroll callback.
  this.originalTable.bind('columnschange', function (e, display) {
    // This will force header size to be calculated on scroll.
    self.widthCalculated = (self.displayWeight !== null && self.displayWeight === display);
    self.displayWeight = display;
  });

  // Clone the table header so it inherits original jQuery properties. Hide
  // the table to avoid a flash of the header clone upon page load.
  this.stickyTable = $('<table class="sticky-header"/>')
    .insertBefore(this.originalTable)
    .css({ position: 'fixed', top: '0px' });
  this.stickyHeader = this.originalHeader.clone(true)
    .hide()
    .appendTo(this.stickyTable);
  this.stickyHeaderCells = this.stickyHeader.find('> tr > th');

  this.originalTable.addClass('sticky-table');
  $(window)
    .bind('scroll.drupal-tableheader', $.proxy(this, 'eventhandlerRecalculateStickyHeader'))
    .bind('resize.drupal-tableheader', { calculateWidth: true }, $.proxy(this, 'eventhandlerRecalculateStickyHeader'))
    // Make sure the anchor being scrolled into view is not hidden beneath the
    // sticky table header. Adjust the scrollTop if it does.
    .bind('drupalDisplaceAnchor.drupal-tableheader', function () {
      window.scrollBy(0, -self.stickyTable.outerHeight());
    })
    // Make sure the element being focused is not hidden beneath the sticky
    // table header. Adjust the scrollTop if it does.
    .bind('drupalDisplaceFocus.drupal-tableheader', function (event) {
      if (self.stickyVisible && event.clientY < (self.stickyOffsetTop + self.stickyTable.outerHeight()) && event.$target.closest('sticky-header').length === 0) {
        window.scrollBy(0, -self.stickyTable.outerHeight());
      }
    })
    .triggerHandler('resize.drupal-tableheader');

  // We hid the header to avoid it showing up erroneously on page load;
  // we need to unhide it now so that it will show up when expected.
  this.stickyHeader.show();
};

/**
 * Event handler: recalculates position of the sticky table header.
 *
 * @param event
 *   Event being triggered.
 */
Drupal.tableHeader.prototype.eventhandlerRecalculateStickyHeader = function (event) {
  var self = this;
  var calculateWidth = event.data && event.data.calculateWidth;

  // Reset top position of sticky table headers to the current top offset.
  this.stickyOffsetTop = Drupal.settings.tableHeaderOffset ? eval(Drupal.settings.tableHeaderOffset + '()') : 0;
  this.stickyTable.css('top', this.stickyOffsetTop + 'px');

  // Save positioning data.
  var viewHeight = document.documentElement.scrollHeight || document.body.scrollHeight;
  if (calculateWidth || this.viewHeight !== viewHeight) {
    this.viewHeight = viewHeight;
    this.vPosition = this.originalTable.offset().top - 4 - this.stickyOffsetTop;
    this.hPosition = this.originalTable.offset().left;
    this.vLength = this.originalTable[0].clientHeight - 100;
    calculateWidth = true;
  }

  // Track horizontal positioning relative to the viewport and set visibility.
  var hScroll = document.documentElement.scrollLeft || document.body.scrollLeft;
  var vOffset = (document.documentElement.scrollTop || document.body.scrollTop) - this.vPosition;
  this.stickyVisible = vOffset > 0 && vOffset < this.vLength;
  this.stickyTable.css({ left: (-hScroll + this.hPosition) + 'px', visibility: this.stickyVisible ? 'visible' : 'hidden' });

  // Only perform expensive calculations if the sticky header is actually
  // visible or when forced.
  if (this.stickyVisible && (calculateWidth || !this.widthCalculated)) {
    this.widthCalculated = true;
    var $that = null;
    var $stickyCell = null;
    var display = null;
    var cellWidth = null;
    // Resize header and its cell widths.
    // Only apply width to visible table cells. This prevents the header from
    // displaying incorrectly when the sticky header is no longer visible.
    for (var i = 0, il = this.originalHeaderCells.length; i < il; i += 1) {
      $that = $(this.originalHeaderCells[i]);
      $stickyCell = this.stickyHeaderCells.eq($that.index());
      display = $that.css('display');
      if (display !== 'none') {
        cellWidth = $that.css('width');
        // Exception for IE7.
        if (cellWidth === 'auto') {
          cellWidth = $that[0].clientWidth + 'px';
        }
        $stickyCell.css({'width': cellWidth, 'display': display});
      }
      else {
        $stickyCell.css('display', 'none');
      }
    }
    this.stickyTable.css('width', this.originalTable.outerWidth());
  }
};

})(jQuery);
;
(function ($) {

/**
 * A progressbar object. Initialized with the given id. Must be inserted into
 * the DOM afterwards through progressBar.element.
 *
 * method is the function which will perform the HTTP request to get the
 * progress bar state. Either "GET" or "POST".
 *
 * e.g. pb = new progressBar('myProgressBar');
 *      some_element.appendChild(pb.element);
 */
Drupal.progressBar = function (id, updateCallback, method, errorCallback) {
  var pb = this;
  this.id = id;
  this.method = method || 'GET';
  this.updateCallback = updateCallback;
  this.errorCallback = errorCallback;

  // The WAI-ARIA setting aria-live="polite" will announce changes after users
  // have completed their current activity and not interrupt the screen reader.
  this.element = $('<div class="progress" aria-live="polite"></div>').attr('id', id);
  this.element.html('<div class="bar"><div class="filled"></div></div>' +
                    '<div class="percentage"></div>' +
                    '<div class="message">&nbsp;</div>');
};

/**
 * Set the percentage and status message for the progressbar.
 */
Drupal.progressBar.prototype.setProgress = function (percentage, message) {
  if (percentage >= 0 && percentage <= 100) {
    $('div.filled', this.element).css('width', percentage + '%');
    $('div.percentage', this.element).html(percentage + '%');
  }
  $('div.message', this.element).html(message);
  if (this.updateCallback) {
    this.updateCallback(percentage, message, this);
  }
};

/**
 * Start monitoring progress via Ajax.
 */
Drupal.progressBar.prototype.startMonitoring = function (uri, delay) {
  this.delay = delay;
  this.uri = uri;
  this.sendPing();
};

/**
 * Stop monitoring progress via Ajax.
 */
Drupal.progressBar.prototype.stopMonitoring = function () {
  clearTimeout(this.timer);
  // This allows monitoring to be stopped from within the callback.
  this.uri = null;
};

/**
 * Request progress data from server.
 */
Drupal.progressBar.prototype.sendPing = function () {
  if (this.timer) {
    clearTimeout(this.timer);
  }
  if (this.uri) {
    var pb = this;
    // When doing a post request, you need non-null data. Otherwise a
    // HTTP 411 or HTTP 406 (with Apache mod_security) error may result.
    $.ajax({
      type: this.method,
      url: this.uri,
      data: '',
      dataType: 'json',
      success: function (progress) {
        // Display errors.
        if (progress.status == 0) {
          pb.displayError(progress.data);
          return;
        }
        // Update display.
        pb.setProgress(progress.percentage, progress.message);
        // Schedule next timer.
        pb.timer = setTimeout(function () { pb.sendPing(); }, pb.delay);
      },
      error: function (xmlhttp) {
        pb.displayError(Drupal.ajaxError(xmlhttp, pb.uri));
      }
    });
  }
};

/**
 * Display errors on the page.
 */
Drupal.progressBar.prototype.displayError = function (string) {
  var error = $('<div class="messages error"></div>').html(string);
  $(this.element).before(error).hide();

  if (this.errorCallback) {
    this.errorCallback(this);
  }
};

})(jQuery);
;
(function ($) {

  // Increase/decrease quantity
  Drupal.commerce_extra_quantity_quantity = function(selector, way, amount, limit_down) {

    if (Drupal.ajax) {
      Drupal.ajax.prototype.commands.viewsScrollTop = null;
    }


    // Find out current quantity and figure out new one
    var quantity = parseFloat($(selector).val());
    if (way == 1) {
      // Increase
      var new_quantity = quantity+amount;
    }
    else if (way == -1) {
      // Decrease
      var new_quantity = quantity-amount;
    }
    else {
      var new_quantity = quantity;
    }

    // Set new quantity
    if (new_quantity >= limit_down) {
      var allow_change = false;
      var mes = '';
      if ($('body').hasClass('product-page')) {
        var limit_quantity = parseFloat($('input.limit-quantity[type="hidden"]').val());
        if (new_quantity <= limit_quantity) {
          allow_change = true;
        }
      } else if ($('body').hasClass('checkout-page--cart-step')) {
        var limit_quantity = parseFloat($(selector).closest('.col-quantity').find('.limit-quatity').text());
        if (new_quantity <= limit_quantity) {
          allow_change = true;
        } else {
          mes = Drupal.t('You cannot add more of this item to cart. The available quantity of this item is ') + limit_quantity;
          $(selector).closest('.col-quantity').find('.limit-quatity').after($('<div class="limit-err">' + mes +'</div>'));

        }
      }
      if (allow_change) {
        $(selector).val(new_quantity).trigger('change');
      }

    }

    // Set disabled class depending on new quantity
    if (new_quantity <= limit_down) {
      $(selector).prev('span').addClass('commerce-quantity-plusminus-link-disabled');
    }
    else {
      $(selector).prev('span').removeClass('commerce-quantity-plusminus-link-disabled');
    }

    if (!$('body').hasClass('product-page')){
      $('#edit-submit').mousedown();
    }
    return false;




  }

  Drupal.behaviors.myBehavior = {
    attach: function (context, settings) {
      if (context.length > 0) {
        var temp = $(context[0]).find("input#edit-checkout");
        if (temp.length >0) {
          setTimeout(function(){
            allowClickQuantity = true;
          }, 400);
        }
        $(".frm-btn-submit").click(function(e) {
          e.preventDefault();
          temp.click();
        });
      }


    }
  };


  $( document ).ready(function() {
    $(".frm-btn-submit").click(function(e) {
      e.preventDefault();
      $('input#edit-checkout').click();
    });
  });
}(jQuery));

;
(function ($) {


    var $wrapper = null;

  Drupal.ajax = Drupal.ajax || {};

  Drupal.ajax.prototype.commands.e_product_update_image = function (ajax, response, status) {

    if (response.output != '') {
      if (response.output.length > 0) {
        // console.log(response.output.length);
        if ($('.module-product-info').find('.scroller-gallery').length > 0) {
          var $ul = $('.module-product-info').find('.scroller-gallery').empty();
          var i, len;
          for (i = 0, len = response.output.length; i < len; i++) {
            var liTag = $('<li class="item"><div class="wrapper-img"><img /></div></li>');
            liTag.find('img').first().attr('src', response.output[i]);
            liTag.appendTo($ul);
          }
          // $ul.appendTo($('.module-product-info .scroller-gallery'));
          $('#dom-changed').val('1');
        }
      }
      return;
    }
  };

  Drupal.ajax.prototype.commands.e_product_update_price = function (ajax, response, status) {

    if (response.output != '') {
        $('#price-product').html(response.output);
        return;
    }

  };

  var progressWidth = 0;
  var progressInterval = 0;
  Drupal.ajax.prototype.commands.e_product_before_add_to_cart = function (ajax, response, status) {
    //SN - remove error message
    $('span.limit-quantity-message').text('');

    $('#add-to-cart').append('<div class="progress" style="width: 0"></div>');
    $('#add-to-cart').removeClass('loaded');
    $('#add-to-cart').addClass("loading");

    progressInterval = setInterval(function () {
      if (progressWidth > 0 && progressWidth < 80) {
        progressWidth += 10;
        $('#add-to-cart .progress').css('width', progressWidth + '%');
      } else {
        $('#add-to-cart .progress').css('width', '90%');
        //  clearInterval(progressInterval);
      }
    }, 200);

  };

  Drupal.ajax.prototype.commands.e_product_after_add_to_cart = function (ajax, response, status) {
    /*setTimeout(function(){
     console.log(status);
     if (response.output != '' ) {
     console.log(1);
     }
     }, 3000);*/
    setTimeout(function () {
      if (status == "success") {
        $('#add-to-cart .progress').css({'width': '100%'});
        clearInterval(progressInterval);
      }
    }, 100);

    setTimeout(function () {
      $('#add-to-cart').addClass('loaded');
    }, 2000);


    setTimeout(function () {
      $('#add-to-cart .progress').remove();
      $('#add-to-cart').removeClass('loading');

    }, 5000);

    fbAddToCart();
  };

    // Estimate free shipping
    Drupal.behaviors.openedNotifyPopup = {
        attach: function (context, settings) {
            (function ($) {
                var text_temp = $('#price-product').text().replace('.', '');
                var text = text_temp.replace(',', '');
                var price = text.substring(4);
                var price_float = parseFloat(price).toFixed(2);

                var limit_text = $('input[name=limit_amount]').val();
                var limit_float = parseFloat(limit_text).toFixed(2);

                if (Math.round(price_float) >= Math.round(limit_float * 100)) {

                    $(".free-shipping").remove();
                    $("#price-product").append("<span class='free-shipping'>("+Drupal.t('Free shipping')+")</span>");
                }

            })(jQuery);
        }
    };

    //SN - hide variant selected
    var product_variant = $('#edit-product-id');
    product_variant.css("display", "none");

})(jQuery);
;
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


;
