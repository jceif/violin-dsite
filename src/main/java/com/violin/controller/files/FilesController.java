package com.violin.controller.files;


import com.alibaba.druid.support.json.JSONUtils;
import com.violin.model.files.Files;
import com.violin.model.files.UploadResult;
import com.violin.service.files.FilesService;
import org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import org.springframework.util.StringUtils;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;

import static com.alibaba.dubbo.monitor.MonitorService.SUCCESS;

/**
 * Created by jc on 2018/2/2 13:25
 * description ${请描述一下吧}
 */


public class FilesController {
    @Autowired
    private FilesService filesService;
    public String index(HttpServletRequest request) {
        request.setAttribute("items", filesService.findFilesQuery(new HashMap()));
        return SUCCESS;
    }


    public String upload(HttpServletRequest request) throws IOException {
        UploadResult result = new UploadResult();
        File[] uploadFiles = (File[]) ((MultiPartRequestWrapper) request).getFiles("upload");
        File uploadFileTemp = null;
        if (uploadFiles != null && uploadFiles.length > 0) {
            uploadFileTemp = uploadFiles[0];
        } else {
            return  JSON.toJSONString("没有选择上传文件");
        }
        try {
            FileInputStream inputStream = new FileInputStream(uploadFileTemp);
            Files files = new Files();
            files.setContentType("image/png");
            files.setFilePath("D://img/");
            //files.setSize(multipartFile.getSize());
            files.setFileName(uploadFileTemp.getName());
            byte[] buffer = null;
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] b = new byte[1024];
            int n;
            while ((n = inputStream.read(b)) != -1) {
                bos.write(b, 0, n);
            }
            try {
                inputStream.close();
                bos.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            buffer = bos.toByteArray();
            if(buffer.length>  1024 * 1024 * 10){
                result.setMessage("文件不能大于10M");
            }else {
                files.setSize(Long.parseLong(buffer.length+""));
                files = filesService.upload(files, buffer);
            }
            if (!StringUtils.isEmpty(files.getId())) {
                result.setResult(true);
                result.setFileId(files.getId());
                result.setFiles(files);
            }
        } catch (Exception ex) {
            result.setMessage(ex.getMessage());
        }
        return JSONUtils.toJSONString(result);
    }


    public void deleteFilesById(HttpServletRequest request) {
        int fileId=0;
        if(request.getParameter("fileId")!=null){
            fileId=Integer.parseInt(request.getParameter("fileId").toString());
        }
        if (fileId==0) {
            return;
        }
        filesService.deleteFiles(fileId);
    }

    public void deleteFilesByPath(HttpServletRequest request) {
        String filePath="";
        String fileName="";
        if(request.getParameter("filePath")!=null){
            filePath=request.getParameter("fileId").toString();
        }
        if(request.getParameter("fileName")!=null){
            fileName=request.getParameter("fileId").toString();
        }
        if (StringUtils.isEmpty(filePath+fileName)) {
            return;
        }
        filesService.deleteFiles(filePath,fileName);
    }

    public void getFilesById(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int fileId=0;
        if(request.getParameter("fileId")!=null){
            fileId=Integer.parseInt(request.getParameter("fileId").toString());
        }
        if (fileId==0) {
            return;
        }
        Files files = filesService.findFilesById(fileId);
        ServletOutputStream os = null;
        try {
            os = response.getOutputStream();
            response.reset();
            response.setHeader("Content-Disposition", "attachment; filename=" + Calendar.getInstance().getTime().getTime());
            response.setContentType(files.getContentType() + "; charset=utf-8");
            byte[] bytes = filesService.getFile(files);
            if(bytes!=null && bytes.length>0) {
                os.write(bytes);
            }
            os.flush();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (os != null) {
                os.close();
            }
        }
    }

    public void getFilesByPath(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String filePath="";
        String fileName="";
        if(request.getParameter("filePath")!=null){
            filePath=request.getParameter("fileId").toString();
        }
        if(request.getParameter("fileName")!=null){
            fileName=request.getParameter("fileId").toString();
        }
        if (StringUtils.isEmpty(filePath+fileName)) {
            return;
        }
        ServletOutputStream os = null;
        try {
            os = response.getOutputStream();
            response.reset();
            response.setHeader("Content-Disposition", "attachment; filename=" + Calendar.getInstance().getTime().getTime());
            response.setContentType("image/png; charset=utf-8");
            byte[] bytes = filesService.getFile(filePath,fileName);;
            if(bytes!=null && bytes.length>0) {
                os.write(bytes);
            }
            os.flush();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (os != null) {
                os.close();
            }
        }


    }

}
