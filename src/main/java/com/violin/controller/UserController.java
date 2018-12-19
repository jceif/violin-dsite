package com.violin.controller;

import com.violin.model.userinfo.UserInfo;
import com.violin.service.userinfo.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("userInfoService")
    private UserInfoService userInfoService;
    @RequestMapping("/")
    public String toString() {
        UserInfo userInfo=new UserInfo();
        userInfo.setAge(12);;
        userInfo.setPhone("138000123");
        userInfoService.insertUserInfo(userInfo);
        return  "index";
    }
}
