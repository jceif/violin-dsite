<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ tag body-content="scriptless" pageEncoding="UTF-8" %>
<%@ attribute name="items" required="true" type="java.util.List" rtexprvalue="true"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="readonly" required="false" rtexprvalue="true" type="java.lang.Boolean" description="是否只读，只读只显示，非只读输出input" %>
<style type="text/css">
    /* Example wrapper */
    .wrap {
        position: relative;
    }

    /* Frame */
    .frame {
        height: 70px;
        line-height: 70px;
        overflow: hidden;
    }
    .frame ul {
        list-style: none;
        margin: 0;
        padding: 0;
        height: 100%;
        font-size: 50px;
    }
    .frame ul li {
        float: left;
        width: 70px;
        height: 100%;
        margin: 0 1px 0 0;
        padding: 0;
        background: #FFFFFF;
        color: #ddd;
        text-align: center;
        cursor: pointer;

    }
    .frame ul li.active {
        background: #2fade7;
    }
    .add_icon{
        border-radius: 3px;;
        background-image: url("/assets/images/upload/file_upload.png")!important;
        background-repeat:no-repeat!important;;
    }
    /* Pages */
    .pages {
        list-style: none;
        margin: 4px 0;
        padding: 0;
        text-align: center;
    }
    .pages li {
        display: inline-block;
        width: 14px;
        height: 14px;
        margin: 0 4px;
        text-indent: -999px;
        border-radius: 10px;
        cursor: pointer;
        overflow: hidden;
        background: #fff;
        box-shadow: inset 0 0 0 1px rgba(0,0,0,.2);
    }
    .pages li:hover {
        background: #aaa;
    }
    .pages li.active {
        background: #666;
    }

    /* Controls */
    .controls { margin: 25px 0; text-align: center; }

    /* One Item Per Frame example*/
    .oneperframe { height: 300px; line-height: 300px; }
    .oneperframe ul li { width: 1140px; }
    .oneperframe ul li.active { background: #333; }

    /* Crazy example */
    .crazy ul li:nth-child(2n) { width: 100px; margin: 0 4px 0 20px; }
    .crazy ul li:nth-child(3n) { width: 300px; margin: 0 10px 0 5px; }
    .crazy ul li:nth-child(4n) { width: 400px; margin: 0 30px 0 2px; }


    .file_input {
        position: absolute;
        right: 10px;
        width:50px;
        top: 0;
        opacity: 0;
        filter: alpha(opacity=0);
        cursor: pointer
    }

</style>

<script type="application/javascript" src="/assets/js/Plugin/upload/ajaxfileupload.js?t=2"></script>
<script type="text/javascript" src="/assets/js/Plugin/sly/sly.min.js"></script>
<script type="text/javascript">

    function ${id}upload(){
        var ext = $(this).val();
        ext = ext.substring(ext.lastIndexOf(".") + 1, ext.length).toLowerCase();
        //验证文件类型
        if (!(ext && /^(jpeg|jpg|png)$/.test(ext))) {
            alert("只支持jpeg，jpg，png格式，请重新选择！");
            return false;
        }

        $.ajaxFileUpload({
            url:'/file/upload.action',//用于文件上传的服务器端请求的Action地址
            type:"post",//请求方法
            secureuri:false,//一般设置为false
            fileElementId:'${id}_file',//文件id属性
            dataType:"JSON",//返回值类型 一般设置为json,一定要大写,否则可能会出现一些bug
            success:function(msg)  {
               var json =eval("(" + $(msg).text() + ")");
                if(json.result == false){
                    alert(json.message);
                    return false;
                }
                ${id}addNewImg(json.files);
            }
        });
    }

    function ${id}addNewImg(file) {
        var $frame  = $('#${id}_img');
        var $slidee = $frame.children('ul').eq(0);
        $frame.sly('add', '<li id=\"li_' + file.id + '\" class="img_item" onclick=\"${id}showImg(this);\">' +
                '<img style="width: 100%;height: 100%;" src="/file/getFilesById.action?fileId=' + file.id +'" title="标题:'+ file.fileName +'"/>' +
                '<input type="hidden" name="${id}[' + ($slidee.children().length - 1) +'][\'id\']" value="' + file.id +'"/>' +
                '<input type="hidden" name="${id}[' + ($slidee.children().length - 1) +'][\'fileName\']" value="' + file.fileName +'"/>' +
                '</li>', $slidee.children().length - 1);
    }

    function ${id}showImg(item){
        var img = $(item).find("img");
        $("#${id}_view_img").attr("src", img.attr("src")).attr("li_id", item.id);
        $("#${id}Modal").modal("show");
    }

    $(function () {
        var $frame  = $('#${id}_img');
        var $wrap   = $frame.parent();
        // Call Sly on frame
        $frame.sly({
            horizontal: 1,
            itemNav: 'basic',
            smart: 1,
            activateOn: 'click',
            mouseDragging: 1,
            touchDragging: 1,
            releaseSwing: 1,
            startAt: 0,
            pagesBar: $wrap.find('.pages'),
            activatePageOn: 'click',
            speed: 300,
            elasticBounds: 1,
            easing: 'easeOutExpo',
            dragHandle: 1,
            dynamicHandle: 1,
            clickBar: 1
        });
        $('#${id}_img').sly('on', 'active', function (eventName, itemIndex) {
        });

        $("#${id}_del_img").click(function () {
            var id = '${id}';
            var fileId= $("#${id}_view_img").attr("li_id").split("_")[1];
            $("#" + $("#${id}_view_img").attr("li_id")).remove();
            $('#${id}_img').sly("reload");
            $("#${id}Modal").modal("hide");
            //后台删除 图片
            $.ajax({
                type:"post",
                url:"/file/deleteFilesById",
                data:{fileId:fileId},
                async:false,
                success:function(msg){}
            });
            //重编name信息
            var imgList = $("#${id}_img li.img_item");
            $.each(imgList, function(index,item) {
                var hdId = $(item).find(":hidden").get(0);
                var hdName = $(item).find(":hidden").get(1);
                console.log(item);
                ///console.log(hdName);
                $(hdId).attr("name", id + "[" + index + "]['id']");
                $(hdName).attr("name", id + "[" + index + "]['fileName']");
            });

        });



       $(document).on("change","#${id}_file", ${id}upload);
    });
</script>

<div style="height:98px;" class="form-control">
    <div class="wrap">
        <div class="frame" id="${id}_img">
            <ul class="clearfix">
                <c:forEach items="${items}" var="image" varStatus="s">
                    <li id="li_${image.id}" class="img_item" onclick="${id}showImg(this);"><img style="width: 100%;height: 100%;" src="/file/getFilesById.action?fileId=${image.id}" title="标题:${image.fileName}"/>
                        <c:if test="${readonly == false}">
                        <input type="hidden" name="${id}[${s.index}]['id']" value="${image.id}"/>
                        <input type="hidden" name="${id}[${s.index}]['fileName']" value="${image.fileName}"/>
                        </c:if>
                    </li>
                </c:forEach>
                <c:if test="${readonly == false}">
                    <li class="add_icon">
                        <a class="fa ">
                            <input type="file" name="upload" id="${id}_file" class="file_input"/>
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
        <ul class="pages"></ul>
    </div>
</div>
<!-- 模态框（Modal） -->
<div id="${id}Modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" title="关闭">&times;</button>
                <h4 class="modal-title text-center">查看</h4>
            </div>
            <div class="modal-body">
                <img id="${id}_view_img" height="100%" width="100%" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <c:if test="${readonly == false}">
                <button id="${id}_del_img" type="button" class="btn btn-danger">删除</button>
                </c:if>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>