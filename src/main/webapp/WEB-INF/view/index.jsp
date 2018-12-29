<%@ include file="templet/header.jsp"%>

<body class="html front not-logged-in one-sidebar sidebar-first page-node page-node- page-node-14 node-type-front-page i18n-en has-cookie front-page">



<div class="top-wrapper">
    <div class="top extra menu sticky">
        <div class="wrap">
            <div class="settings">
                <a href="#" class="open-popup" data-target="language_popup">
                    <span class="label">Language:</span>
                    <span class="dropdown">English</span>
                </a>
                <a href="#" class="open-popup" data-target="country_popup">
                    <span class="label">Country:</span>
                    <span class="dropdown">Denmark – DKK</span>
                </a>
            </div>
            <div class="right">
                <a href="en/content/contact.html" class="hidden-sm">Contact</a>
                <a href="en/content/press.html" class="hidden-sm">Press</a>
                <a href="en/content/partners.html" class="hidden-sm">Partners</a>
                <a href="en/content/about-vipp.html" class="hidden-sm">About Vipp</a>
                <a href="en/content/career.html" class="hidden-sm">Career</a>
                <a href="en/content/store-locator.html" class="hidden-sm">Store locator</a>
                <a href="en/user.html" class="hidden-sm">My account</a>
                <a href="#" class="btn-icon-close"><i class="icon-close"></i></a>
            </div>
        </div>
    </div>
</div>
<div class="top-wrapper">
    <div class="top primary menu sticky">
        <div class="wrap">
            <a fade-onload="" href="en.html" title="Home" rel="home" id="logo" style="opacity: 1;">
                <img class="logo logo-black" src="${ctx}/assets/images/common/logo.svg" alt="Home"/>
                <img class="logo logo-white" src="${ctx}/assets/images/common/logo_white.svg" alt="Home"/>
            </a>
            <div class="right" fade-onload="" style="opacity: 1;">
                <a href="/product/" class="hidden-sm text-item">Shop</a>
                <a href="en/kitchen/vipp-kitchen.html" class="hidden-sm text-item">Kitchen</a>
                <a href="en/kitchen/professionals.html" class="hidden-sm text-item">Professionals</a>
                <a href="en/hotel.html" class="hidden-sm text-item">Hotel</a>
                <a href="en/stories.html" class="hidden-sm text-item">Stories</a>
                <a href="en/cart.html">
                    <img class="basket-icn basket-icn--black" src="${ctx}/assets/images/common/icon-basket%402x.png" alt="basket">
                    <img class="basket-icn basket-icn--white" src="${ctx}/assets/images/common/icon-basket-white%402x.png" alt="basket">
                    <span id="number-item-in-cart"></span>
                </a>
                <a class="btn-menu-burger" href="#">
                    <img class="icon-menu icon-menu--white" src="${ctx}/assets/images/common/icon-menu-white%402x.svg" alt="menu">
                    <img class="icon-menu icon-menu--black" src="${ctx}/assets/images/common/icon-menu%402x.svg" alt="menu">
                    <i class="icon-close"></i>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Menu is displayed on mobile device -->
<div class="tray-menu--mask"></div>
<div class="tray-menu">
    <ul class="main menu-level menu-current menu-in">
        <li>
            <div>
                <img class="logo" src="${ctx}/assets/images/common/logo.png" alt="Home">
            </div>
            <div>
                <img class="basket-icn" src="${ctx}/assets/images/common/icon-basket%402x.png" alt="basket">
            </div>
        </li>
        <li>
            <ul class="first-nav">
                <li>
                    <a href="#" class="big-txt" data-submenu="submenu-1">Shop <img class="icon-arrow" src="${ctx}/assets/images/common/icon-arrow-right.png" alt="arrow"></a>
                </li>
                <li class="padder">&nbsp;</li>

                <li><a href="en/kitchen/vipp-kitchen.html" class="big-txt">Kitchen</a></li>
                <li class="padder">&nbsp;</li>

                <li><a href="en/kitchen/professionals.html" class="big-txt">Professionals</a></li>
                <li class="padder">&nbsp;</li>

                <li><a href="en/hotel.html" class="big-txt">Hotel</a></li>
                <li class="padder">&nbsp;</li>

                <li><a href="#" class="big-txt" data-submenu="submenu-2">Stories
                    <img class="icon-arrow" src="${ctx}/assets/images/common/icon-arrow-right.png" alt="arrow"/></a>
                </li>
                <li class="padder">&nbsp;</li>


            </ul>
        </li>
        <li class="padder">&nbsp;</li>
        <li>
            <ul class="second-nav">
                <li><a href="en/content/contact.html" class="">Contact</a></li>
                <li><a href="en/content/press.html" class="">Press</a></li>
                <li><a href="en/content/partners.html" class="">Partners</a></li>
                <li><a href="en/content/about-vipp.html" class="">About Vipp</a></li>
                <li><a href="en/content/career.html" class="">Career</a></li>
                <li><a href="en/content/store-locator.html" class="">Store locator</a></li>
                <li><a href="en/user.html" class="">My account</a></li>
            </ul>
        </li>
        <li class="padder">&nbsp;</li>
        <li>
            <ul class="third-nav">
                <li><a href="#" data-submenu="submenu-3" class="normal-txt">
                    English <img class="icon-arrow" src="${ctx}/assets/images/common/icon-arrow-right.png"
                                 alt="arrow"></a></li>
                <li><a href="#" data-submenu="submenu-4" class="normal-txt">Denmark – DKK
                    <img class="icon-arrow" src="${ctx}/assets/images/common/icon-arrow-right.png" alt="arrow"></a>
                </li>

            </ul>
        </li>
    </ul>
    <ul class="tray-menu--submenu menu-level submenu-1">
        <li>
            <ul class="top-menu">
                <li><a href="#" class="btn-back normal-txt"><img class="icon-arrow icon-arrow--left" alt="arrow-left"
                                                                 src="${ctx}/assets/images/common/icon-arrow-left.png">Back</a>
                </li>
            </ul>
        </li>
        <li><a href="#" class="normal-txt">Select products</a></li>
        <li class="padder">&nbsp;</li>
        <li><a href="en/products.html">All products</a></li>
        <li class="padder">&nbsp;</li>
        <li><a href="en/shop/kitchen.html">Kitchen</a></li>
        <li><a href="en/shop/bathroom.html">Bathroom</a></li>
        <li><a href="en/shop/bins.html">Bins</a></li>
        <li><a href="en/shop/lighting.html">Lighting</a></li>
        <li><a href="en/shop/furniture.html">Furniture</a></li>
        <li><a href="en/shop/accessories.html">Accessories</a></li>
        <li><a href="en/shop/spare-parts.html">Spare parts</a></li>
        <li class="padder">&nbsp;</li>
        <li class="spaceabove large"><a href="en/kitchen/vipp-kitchen.html">Vipp kitchen</a></li>
    </ul>
    <ul class="tray-menu--submenu menu-level submenu-2">
        <li>
            <ul class="top-menu">
                <li><a href="#" class="btn-back normal-txt">
                    <img class="icon-arrow icon-arrow--left" alt="arrow-left"
                                                                 src="${ctx}/assets/images/common/icon-arrow-left.png">Back</a>
                </li>
            </ul>
        </li>
        <li><a href="javascript:void(0);" class="normal-txt">Select Stories</a></li>
        <li class="padder">&nbsp;</li>
        <li class="cate-stories active"><a href="en/stories.html" data-cate-id='0'>All stories</a></li>
        <li class="padder">&nbsp;</li>
        <li class="cate-stories"><a href="#" data-cate-link="" data-cate-id="31">Vipp history</a></li>
        <li class="cate-stories"><a href="#" data-cate-link="" data-cate-id="27">Kitchen stories</a></li>
    </ul>
    <ul class="tray-menu--submenu menu-level submenu-3">
        <li>
            <ul class="top-menu">
                <li><a href="#" class="btn-back normal-txt">
                    <img class="icon-arrow icon-arrow--left" alt="arrow-left"
                                                                 src="${ctx}/assets/images/common/icon-arrow-left.png">Back</a>
                </li>
            </ul>
        </li>
        <li><a href="#" class="normal-txt">Select Language</a></li>
        <li class="padder">&nbsp;</li>
        <li><a class="" href="da.html">Danish</a></li>
        <li><a class="active" href="en.html">English</a></li>
        <li><a class="" href="en-us.html">English US</a></li>
        <li><a class="" href="fr.html">French</a></li>
        <li><a class="" href="de.html">German</a></li>
        <li><a class="" href="no.html">Norwegian Bokmål</a></li>
    </ul>
    <ul class="tray-menu--submenu menu-level submenu-4">
        <li>
            <ul class="top-menu">
                <li><a href="#" class="btn-back normal-txt">
                    <img class="icon-arrow icon-arrow--left" alt="arrow-left"
                                                                 src="${ctx}/assets/images/common/icon-arrow-left.png">Back</a>
                </li>
            </ul>
        </li>
        <li><a href="#" class="normal-txt">SELECT country – currency</a></li>
        <li class="padder">&nbsp;</li>
        <form action="https://vipp.com/en" method="post" id="e-common-form-change-country" accept-charset="UTF-8">
            <div>
                <div class="form-item form-type-select form-item-country">
                    <label for="edit-country">Country </label>
                    <select id="edit-country" name="country" class="form-select">
                        <option value="AT">Austria - EUR</option>
                        <option value="BE">Belgium - EUR</option>
                        <option value="CZ">Czech Republic - EUR</option>
                        <option value="DK">Denmark - DKK</option>
                        <option value="FI">Finland - EUR</option>
                        <option value="FR">France - EUR</option>
                        <option value="DE">Germany - EUR</option>
                        <option value="GR">Greece - EUR</option>
                        <option value="IE">Ireland - EUR</option>
                        <option value="IT">Italy - EUR</option>
                        <option value="LU">Luxembourg - EUR</option>
                        <option value="NL">Netherlands - EUR</option>
                        <option value="NO">Norway - NOK</option>
                        <option value="PL">Poland - EUR</option>
                        <option value="PT">Portugal - EUR</option>
                        <option value="ES">Spain - EUR</option>
                        <option value="SE">Sweden - SEK</option>
                        <option value="GB">United Kingdom - GBP</option>
                        <option value="US">United States - USD</option>
                    </select>
                </div>
                <input id="current-link" type="hidden" name="current_link" value=""/>
                <input type="submit" id="edit-submit--2" name="op" value="OK" class="form-submit"/><input type="hidden"
                                                                                                          name="form_build_id"
                                                                                                          value="form-VijIGq16mNRx9uSJl1zClz_NYFuw_MqMdbNZEE7lK7o"/>
                <input type="hidden" name="form_id" value="e_common_form_change_country"/>
            </div>
        </form>
    </ul>

    <ul class="tray-menu--submenu menu-level submenu-5">
        <li>
            <ul class="top-menu">
                <li><a href="#" class="btn-back normal-txt">Back</a></li>
            </ul>
        </li>
        <div class="popup-box notification">
            <div class="popup-title normal-txt">
                <h3>You are about to change your shipping location</h3></div>
            <div class="popup-content">
                <p>You are about to change your shipping location. &nbsp;This might result in some products being
                    removed from your cart.</p>
                <p>For more information, please read our <a href="en/content/terms-and-conditions.html" target="_blank">terms
                    &amp; conditions</a></p></div>
            <div class="wrap-bottom">
                <a href="#" class="button grey">Continue</a>
                <a href="#" class="underline">Back</a>
            </div>
        </div>
    </ul>
</div>
<div class="wrapper-main-content">
    <div class="container-fluid ">


        <!-- Module E01: Top element -->
        <div class="row full has-fold">
            <div class="col-xs-14">
                <div class="hero-product-container"
                     style="background-image: url(${ctx}/assets/images/product/vipp-17-pedal-bin-frontpage_2.jpg);">
                    <div class="hero-product-container-xs"
                         style="background-image: url(${ctx}/assets/images/product/vipp-17-pedal-bin-frontpage-mobile-1_2.jpg);">
                    </div>
                    <div class="hero-product-description white" fade-onload style="opacity: 1;">
                        <h4>Pedal bin 30 L / 8 gal - DKK 2,999.00</h4>
                        <h1 class="hero-heading">Open. Close. Repeat</h1>
                        <a href="en/products/pedal-bin-30-l-8-gal.html" class="btn-md"><span>SHOP NOW</span></a>
                    </div>
                </div>
            </div>
        </div> <!-- ./E01 -->
        <div class="row full wrapper-content product-column product-four-column slide-to-top">

            <div class="col-md-14">
                <div class="row full">

                    <div class="col-sm-12 col-sm-offset-1 col-xs-14 product-column-title">
                        <h3>Find your bin size</h3>
                        <a href="en/shop/bins.html" class="hidden-xs">View bins</a>
                    </div>
                    <ul class="col-sm-12 col-xs-14 product-list">
                        <li class="col-md-6 ">
                            <a href="en/products/pedal-bin-4-l-1-gal.html">
                                <div class="item  in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-13-pedal-bin-white-interior-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-13-pedal-bin-white-interior-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Pedal bin 4 L / 1 gal</span>
                                        <span class="price">DKK 1,599.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-13-pedal-bin-white-1_1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp13</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/pedal-bin-8-l-2-gal.html">
                                <div class="item  in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-14-pedal-bin-1.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-14-pedal-bin-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Pedal bin 8 L / 2 gal</span>
                                        <span class="price">DKK 1,799.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-14-pedal-bin-white-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp14</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/pedal-bin-14-l-4-gal.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-15-bin-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-15-bin-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Pedal bin 14 L / 4 gal </span>
                                        <span class="price">DKK 2,299.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-15-pedal-bin-white-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp15</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/pedal-bin-18-l-5-gal.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-16-pedal-bin-black-topview-0_0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-16-pedal-bin-black-topview-0_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Pedal bin 18 L / 5 gal</span>
                                        <span class="price">DKK 2,499.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-16-pedal-bin-white-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp16</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <a href="en/shop/bins.html" class="view-more visible-xs">View bins</a>

                </div>
            </div>
        </div>
        <!-- E36: MODULE TOP IMAGE -->
        <div class="row full has-fold">
            <div class="col-xs-14">
                <!-- has uploaded desktop video: .top-img-md.top-img-md--video -->
                <!-- if not: .top-img-md  -->
                <div class="top-img-md top-img-md--video"
                     style="background-image: url(${ctx}/assets/images/product/vipp-kitchen-island-frontapge-1.jpg);">
                    <div class="top-img-md--image"
                         style="background-image: url(${ctx}/assets/images/product/vipp-kitchen-island-frontapge-1.jpg);">
                    </div>

                    <div class="wrapper-video">
                        <div class="url_video">https://vipp.com/${ctx}/assets/images/product/vipp_minifilm_3_lowress-3.mp4</div>
                        <div class="type">video/mp4</div>
                        <video autoplay muted playsinline loop>
                            <source src="${ctx}/assets/images/product/vipp_minifilm_3_lowress-3.mp4" type="video/mp4">
                        </video>
                    </div>

                    <div class="top-img-md--content white">
                        <h4>Vipp KITCHEN</h4>

                        <h1 class="hero-heading">Rethinking the modular kitchen</h1>

                        <a href="en/kitchen/vipp-kitchen.html" class="button view-now white">LEARN MORE</a>
                    </div>


                </div>

                <!-- has uploaded mobile video: .top-img-md.top-img-md--on-mobile.top-img-md--video -->
                <!-- if not: .top-img-md.top-img-md--on-mobile  -->
                <div class="top-img-md top-img-md--on-mobile"
                     style="background-image: url(${ctx}/assets/images/product/vipp-kitchen-island-frontpage-mobile.jpg);">
                    <div class="top-img-md--image"
                         style="background-image: url(${ctx}/assets/images/product/vipp-kitchen-island-frontpage-mobile.jpg);"></div>


                    <div class="top-img-md--content white">
                        <h4>Vipp KITCHEN</h4>

                        <h1 class="hero-heading">Rethinking the modular kitchen</h1>
                        <a href="en/kitchen/vipp-kitchen.html" class="button view-now white">LEARN MORE</a>
                    </div>
                </div>

            </div>

        </div><!-- ./E36 -->
        <div class="row full wrapper-content product-column product-four-column slide-to-top">

            <div class="col-md-14">
                <div class="row full">

                    <div class="col-sm-12 col-sm-offset-1 col-xs-14 product-column-title">
                        <h3>Custom-made for kitchen</h3>
                        <a href="en/shop/kitchen.html" class="hidden-xs">View kitchen products </a>
                    </div>
                    <ul class="col-sm-12 col-xs-14 product-list">
                        <li class="col-md-6 ">
                            <a href="en/products/dishwashing-brush.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-280-dishwashing-brush-1-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-280-dishwashing-brush-1-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Dishwashing brush</span>
                                        <span class="price">DKK 399.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-280-dishwashing-brush-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp280</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/salt-and-pepper.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-263-salt-and-pepper-mills-interior-0_0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-263-salt-and-pepper-mills-interior-0_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Salt and pepper</span>
                                        <span class="price">DKK 1,199.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-263-salt-pepper-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp263</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/breadbox.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-270-bread-box-hover-1.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-270-bread-box-hover-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Breadbox</span>
                                        <span class="price">DKK 1,249.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-270-breadbox-white-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp270</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="col-md-6 ">
                            <a href="en/products/trivet.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img" nid
                                             style="background-image: url('${ctx}/assets/images/product/vipp-268-trivet-hover-1.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-268-trivet-hover-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Trivet 2 pcs.</span>
                                        <span class="price">DKK 499.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-268-trivet-3_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp268</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <a href="en/shop/kitchen.html" class="view-more visible-xs">View kitchen products </a>

                </div>
            </div>
        </div>
        <div class="row full collection-teaser slide-to-top">
            <div class="col-md-14">
                <div class="row full">
                    <div class="col-xs-7">
                        <div class="hero-story-container fade-onscroll"
                             style="background-image: url(${ctx}/assets/images/product/vipp-530-table-lamp-frontpage-1_2.jpg);">
                            <img src="${ctx}/assets/images/product/vipp-530-table-lamp-frontpage-1_2.jpg" alt="">
                            <div class="hero-story-description">
                                <div class="hero-story-description__wrapper">
                                    <h4>LIGHTING</h4>

                                    <h1>Decorative lighting</h1>
                                    <a href="en/shop/lighting.html" class="button white view-now">Shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-7">
                        <div class="hero-story-container fade-onscroll"
                             style="background-image: url(${ctx}/assets/images/product/lifestyle-rack-low-1-low_2.jpg);">
                            <img src="${ctx}/assets/images/product/lifestyle-rack-low-1-low_2.jpg" alt="">
                            <div class="hero-story-description">
                                <div class="hero-story-description__wrapper">
                                    <h4>FURNITURE</h4>

                                    <h1>Fully furnished</h1>
                                    <a href="en/shop/furniture.html" class="button white view-now">Shop now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- E36: MODULE TOP IMAGE -->
        <div class="row full has-fold">
            <div class="col-xs-14">
                <!-- has uploaded desktop video: .top-img-md.top-img-md--video -->
                <!-- if not: .top-img-md  -->
                <div class="top-img-md top-img-md--video" style="background-image: url();">

                    <div class="wrapper-video">
                        <div class="url_video">https://vipp.com/${ctx}/assets/images/product/julefilm-til-web_0.mp4
                        </div>
                        <div class="type">video/mp4</div>
                        <video autoplay muted playsinline loop>
                            <source src="${ctx}/assets/images/product/julefilm-til-web_0.mp4" type="video/mp4">
                        </video>
                    </div>

                    <div class="top-img-md--content white">
                        <h4>Christmas competition </h4>

                        <h1 class="hero-heading">24 days / 24 Vipp gifts </h1>

                        <a href="en/story/julekampagne.html" class="button view-now white">PARTICIPATE NOW</a>
                    </div>


                </div>

                <!-- has uploaded mobile video: .top-img-md.top-img-md--on-mobile.top-img-md--video -->
                <!-- if not: .top-img-md.top-img-md--on-mobile  -->
                <div class="top-img-md top-img-md--on-mobile"
                     style="background-image: url(${ctx}/assets/images/product/vipp-chimney-house-julekampagne-frontpage_2.jpg);">
                    <div class="top-img-md--image"
                         style="background-image: url(${ctx}/assets/images/product/vipp-chimney-house-julekampagne-frontpage_2.jpg);"></div>


                    <div class="top-img-md--content white">
                        <h4>Christmas competition </h4>

                        <h1 class="hero-heading">24 days / 24 Vipp gifts </h1>
                        <a href="en/story/julekampagne.html" class="button view-now white">PARTICIPATE NOW</a>
                    </div>
                </div>

            </div>

        </div><!-- ./E36 -->
        <div class="row full wrapper-content product-column product-four-column product-four-column--wide slide-to-top">
            <div class="col-md-14">
                <div class="row full">

                    <div class="col-sm-12 col-sm-offset-1 col-xs-14 product-column-title">
                        <h3>A trio for the groom room</h3>
                        <a href="en/shop/bathroom.html" class="hidden-xs">View bathroom products</a>
                    </div>
                    <ul class="col-sm-12 col-xs-14 product-list">

                        <li class="col-md-6 he">
                            <a href="en/products/shelf-large.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img is-landscape"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-921-shelf-white-1.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-921-shelf-white-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Shelf, large</span>
                                        <span class="price">DKK 1,999.00</span>
                                    </div>
                                    <div class="container landscape">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-922-shelf-white-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp922</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="col-md-6 he">
                            <a href="en/products/toilet-brush.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-11-toilet-brush-black-white-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-11-toilet-brush-black-white-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Toilet brush</span>
                                        <span class="price">DKK 1,249.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-11-toilet-brush-white-1-ny.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp11</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="col-md-6 he">
                            <a href="en/products/soap-dispenser.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-9-soap-dispenser-black-interior-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-9-soap-dispenser-black-interior-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Soap dispenser</span>
                                        <span class="price">DKK 849.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-9-soap-dispenser-white.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp9</p>
                                        <div class="color-indicator">
                                            <div class="color"
                                                 style="background: #FFFFFF; border-color: #a0a0a0 ;"></div>
                                            <div class="color"
                                                 style="background: #000000; border-color: #000000 ;"></div>
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <a href="en/shop/bathroom.html" class="view-more visible-xs">View bathroom products</a>

                </div>
            </div>

        </div>
        <!-- E36: MODULE TOP IMAGE -->
        <div class="row full has-fold">
            <div class="col-xs-14">
                <!-- has uploaded desktop video: .top-img-md.top-img-md--video -->
                <!-- if not: .top-img-md  -->
                <div class="top-img-md"
                     style="background-image: url(${ctx}/assets/images/product/office-bin-lifestyle-frontpage_2.jpg);">
                    <div class="top-img-md--image"
                         style="background-image: url(${ctx}/assets/images/product/office-bin-lifestyle-frontpage_2.jpg);">
                    </div>


                    <div class="top-img-md--content white">
                        <h4>Architect and Contract</h4>

                        <h1 class="hero-heading">Explore our new professionals site </h1>

                        <a href="en/kitchen/professionals.html" class="button view-now white">Learn more </a>
                    </div>


                </div>

                <!-- has uploaded mobile video: .top-img-md.top-img-md--on-mobile.top-img-md--video -->
                <!-- if not: .top-img-md.top-img-md--on-mobile  -->
                <div class="top-img-md top-img-md--on-mobile"
                     style="background-image: url(${ctx}/assets/images/product/office-bin-lifestyle-frontpage-2_1.jpg);">
                    <div class="top-img-md--image"
                         style="background-image: url(${ctx}/assets/images/product/office-bin-lifestyle-frontpage-2_1.jpg);"></div>


                    <div class="top-img-md--content white">
                        <h4>Architect and Contract</h4>

                        <h1 class="hero-heading">Explore our new professionals site </h1>
                        <a href="en/kitchen/professionals.html" class="button view-now white">Learn more </a>
                    </div>
                </div>

            </div>

        </div><!-- ./E36 -->
        <div class="row full wrapper-content product-column product-four-column product-four-column--wide slide-to-top">
            <div class="col-md-14">
                <div class="row full">

                    <div class="col-sm-12 col-sm-offset-1 col-xs-14 product-column-title">
                        <h3>Key pieces for the home</h3>
                        <a href="en/shop/furniture.html" class="hidden-xs">View furniture</a>
                    </div>
                    <ul class="col-sm-12 col-xs-14 product-list">

                        <li class="col-md-6 he">
                            <a href="en/products/table-medium.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img is-landscape"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-971-table-detail-1.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-971-table-detail-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Table, medium</span>
                                        <span class="price">DKK 19,995.00</span>
                                    </div>
                                    <div class="container landscape">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-971-table-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp971</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="col-md-6 he">
                            <a href="en/products/side-table.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-421-side-table-interior-0_0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-421-side-table-interior-0_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line">Side table</span>
                                        <span class="price">DKK 2,499.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-421-side-table-1_0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp421</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>

                        <li class="col-md-6 he">
                            <a href="en/products/rack-low.html">
                                <div class="item in-view">
                                    <div class="mo">
                                        <div class="super-img"
                                             style="background-image: url('${ctx}/assets/images/product/vipp-473-rack-detail-0.jpg');">
                                            <img src="${ctx}/assets/images/product/vipp-473-rack-detail-0.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <span class="one-line" Rack, low</span>
                                        <span class="price">DKK 16,000.00</span>
                                    </div>
                                    <div class="container portrait loaded">
                                        <div class="img-wrapper">
                                            <img src="${ctx}/assets/images/product/vipp-473-rack-low-1.jpg">
                                        </div>
                                    </div>
                                    <div class="line">
                                        <p class="seriesnumber">Vipp473</p>
                                        <div class="color-indicator">
                                            <!--<div class="color" style="background: #fff; border: 1px solid #a4a4a4;"></div>-->
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>

                    <a href="en/shop/furniture.html" class="view-more visible-xs">View furniture</a>

                </div>
            </div>

        </div>
        <div class="row full slide-to-top">
            <div class="col-xs-14">
                <div class="mod-stories-thumb no-margin stories-three-columns">
                    <ul class="row">
                        <li class="item-text-on-img fade-onscroll">
                            <a href="en/story/marie-moma-en.html">
                                <div class="wrap-img wrap-img--landscape"
                                     style="background-image: url('${ctx}/assets/images/product/vipp-history-7.jpg')">
                                    <img src="${ctx}/assets/images/product/vipp-history-7.jpg" alt=""/>
                                </div>
                                <div class="wrap-img wrap-img--portrait"
                                     style="background-image: url('${ctx}/assets/images/product/vipp-history-40.jpg')">
                                    <img src="${ctx}/assets/images/product/vipp-history-40.jpg" alt=""/>
                                </div>
                                <div class="wrap-text">
                                    <h4>story</h4>
                                    <h3>From Marie to MoMA</h3>
                                </div>
                            </a>
                        </li>
                        <li class="item-text-on-img fade-onscroll">
                            <a href="en/story/utzon.html">
                                <div class="wrap-img wrap-img--landscape"
                                     style="background-image: url('${ctx}/assets/images/product/02-utzon-outdoor.jpg')">
                                    <img src="${ctx}/assets/images/product/02-utzon-outdoor.jpg" alt=""/>
                                </div>
                                <div class="wrap-img wrap-img--portrait"
                                     style="background-image: url('${ctx}/assets/images/product/02-utzon-outdoor_0.jpg')">
                                    <img src="${ctx}/assets/images/product/02-utzon-outdoor_0.jpg" alt=""/>
                                </div>
                                <div class="wrap-text">
                                    <h4>story</h4>
                                    <h3>The Architect's Cliff-hanger</h3>
                                </div>
                            </a>
                        </li>
                        <li class="item-text-on-img fade-onscroll">
                            <a href="en/story/uz%c3%a8s.html">
                                <div class="wrap-img wrap-img--landscape"
                                     style="background-image: url('${ctx}/assets/images/product/usez-vipp-kitchen-1.jpg')">
                                    <img src="${ctx}/assets/images/product/usez-vipp-kitchen-1.jpg" alt=""/>
                                </div>
                                <div class="wrap-img wrap-img--portrait"
                                     style="background-image: url('${ctx}/assets/images/product/usez-vipp-kitchen-2.jpg')">
                                    <img src="${ctx}/assets/images/product/usez-vipp-kitchen-2.jpg" alt=""/>
                                </div>
                                <div class="wrap-text">
                                    <h4>story</h4>
                                    <h3>Quintessential French Townhouse </h3>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>


<!-- Modal Country -->
<div class="overlay"></div>
<div class="popup-container" id="country_popup">
    <div class="popup-box list-country">
        <div class="popup-title">
            <h3>Select country and currency</h3>
        </div>
        <div class="popup-content">
            <form action="https://vipp.com/en" method="post" id="e-common-form-change-country--2"
                  accept-charset="UTF-8">
                <div>
                    <div class="form-item form-type-select form-item-country">
                        <label for="edit-country--2">Country </label>
                        <select id="edit-country--2" name="country" class="form-select">
                            <option value="AT">Austria - EUR</option>
                            <option value="BE">Belgium - EUR</option>
                            <option value="CZ">Czech Republic - EUR</option>
                            <option value="DK">Denmark - DKK</option>
                            <option value="FI">Finland - EUR</option>
                            <option value="FR">France - EUR</option>
                            <option value="DE">Germany - EUR</option>
                            <option value="GR">Greece - EUR</option>
                            <option value="IE">Ireland - EUR</option>
                            <option value="IT">Italy - EUR</option>
                            <option value="LU">Luxembourg - EUR</option>
                            <option value="NL">Netherlands - EUR</option>
                            <option value="NO">Norway - NOK</option>
                            <option value="PL">Poland - EUR</option>
                            <option value="PT">Portugal - EUR</option>
                            <option value="ES">Spain - EUR</option>
                            <option value="SE">Sweden - SEK</option>
                            <option value="GB">United Kingdom - GBP</option>
                            <option value="US">United States - USD</option>
                        </select>
                    </div>
                    <input id="current-link" type="hidden" name="current_link" value=""/>
                    <input type="submit" id="edit-submit--3" name="op" value="OK" class="form-submit"/><input
                        type="hidden" name="form_build_id" value="form-Ql92tnddt4zc2qnmG_DooveDhleOmnWlB-KrBvBRHLE"/>
                    <input type="hidden" name="form_id" value="e_common_form_change_country"/>
                </div>
            </form>
        </div>
        <div class="close-popup"><i class="icon-close"></i></div>
    </div>

    <div class="popup-box notification">
        <div class="popup-title">
            <h3>You are about to change your shipping location</h3></div>
        <div class="popup-content">
            <p>You are about to change your shipping location. &nbsp;This might result in some products being removed
                from your cart.</p>
            <p>For more information, please read our <a href="en/content/terms-and-conditions.html" target="_blank">terms
                &amp; conditions</a></p></div>
        <div class="wrap-bottom">
            <a href="#" class="button grey">Continue</a>
            <a href="#" class="underline">Back</a>

        </div>
        <div class="close-noti"><i class="icon-close"></i></div>
    </div>
</div>
<!-- Modal language-->
<div class="overlay"></div>
<div class="popup-container" id="language_popup">
    <div class="popup-box">
        <div class="popup-title">
            <h3></h3>
        </div>
        <div class="popup-content">
            <ul>
                <li>
                    <a class=""
                       href="da.html">Danish</a>
                </li>
                <li>
                    <a class="active"
                       href="en.html">English</a>
                </li>
                <li>
                    <a class=""
                       href="en-us.html">English US</a>
                </li>
                <li>
                    <a class=""
                       href="fr.html">French</a>
                </li>
                <li>
                    <a class=""
                       href="de.html">German</a>
                </li>
                <li>
                    <a class=""
                       href="no.html">Norwegian</a>
                </li>
            </ul>
        </div>
        <div class="close-popup"><i class="icon-close"></i></div>
    </div>
</div>

<%--<jsp:include page="templet/footer.jsp.jsp"></jsp:include>--%>

<%@ include file="templet/footer.jsp"%>

</body>
</html>