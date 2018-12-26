package com.violin.controller.product;


import com.violin.model.userinfo.UserInfo;
import com.violin.service.userinfo.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Calendar;

@Controller
@RequestMapping("/product")
public class ProductController {


    @RequestMapping("/")
    public String toString() {
        return  "products";
    }
}
