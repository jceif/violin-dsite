<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ tag body-content="scriptless" pageEncoding="UTF-8" %>
<%@ attribute name="items" required="true" type="java.util.List" rtexprvalue="true"%>
<%@ attribute name="id" required="true" rtexprvalue="true"%>
<%@ attribute name="readonly" required="false" rtexprvalue="true" type="java.lang.Boolean" description="是否只读，只读只显示，非只读输出input" %>
<script type="application/javascript" src="/static/js/upload/ajaxfileupload.js?t=2"></script>
<script type="text/javascript">

    function ${id}upload(){
        $.ajaxFileUpload({
            url:'/files/upload',//用于文件上传的服务器端请求的Action地址
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
                ${id}AddAttachment(json.files);
            }
        });
    }

    function ${id}AddAttachment(file) {
        var len = $("#${id}Content .btn-group").length;

        var html = '<div class="btn-group">' +
                        '<a type="button" class="btn btn-default btn-sm" href="/files/get?fileId=' + file.id +'">' +
                            '<span class="fa fa-paperclip"></span>&nbsp;&nbsp;' + file.fileName +'</a>' +
                        '<button type="button" class="btn btn-default btn-sm" onclick="${id}DelAttachment(this);">' +
                            '<span class="fa fa-close text-red"></span>' +
                            '<input type="hidden" name="${id}[' + len +'][\'id\']" value="' + file.id +'"/>' +
                            '<input type="hidden" name="${id}[' + len +'][\'filename\']" value="' + file.fileName +'"/>' +
                        '</button>' +
                    '</div>';
       $("#${id}Upload").before(html);
    }

    function ${id}DelAttachment(btn){
        var id = '${id}';
        $(btn).parent().remove();
        //重编name信息
        var itemList = $("#${id}Content .btn-group");
        $.each(itemList, function(index,item) {
            var hdId = $(item).find(":hidden").get(0);
            var hdName = $(item).find(":hidden").get(1);
            console.log(item);
            $(hdId).attr("name", id + "[" + index + "]['id']");
            $(hdName).attr("name", id + "[" + index + "]['filename']");
        });
    }

    $(function () {
        $(document).on("change","#${id}_file", ${id}upload);
    });
</script>

<div id="${id}Content" style="height:98px;overflow-y: visible;white-space:normal" class="form-control">
    <c:forEach items="${items}" var="item" varStatus="s">
    <div class="btn-group">
        <a type="button" class="btn btn-default btn-sm" href="/files/get?fileId=${item.id}">
            <span class="fa fa-paperclip"></span>&nbsp;&nbsp;${item.filename}</a>
        <c:if test="${readonly == false}">
        <button type="button" class="btn btn-default btn-sm" onclick="${id}DelAttachment(this);">
            <span class="fa fa-close text-red"></span>
            <input type="hidden" name="${id}[${s.index}]['id']" value="${item.id}"/>
            <input type="hidden" name="${id}[${s.index}]['filename']" value="${item.filename}"/>
        </button>
        </c:if>
    </div>

    </c:forEach>
    <c:if test="${readonly == false}">
        <div id="${id}Upload" class="btn btn-default btn-file">
            <i class="fa fa-plus"></i> 上传
            <input type="file" name="upload" id="${id}_file">
        </div>
    </c:if>
</div>