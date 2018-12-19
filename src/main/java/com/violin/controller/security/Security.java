package com.violin.controller.security;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;


@RequestMapping("security")
public class Security {

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String userName, String password, String rememberMe, String type, HttpServletRequest req) {
        String error = null;
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(userName, password);
        if (rememberMe != null && "true".equals(rememberMe))
            token.setRememberMe(true);    // 记住我
        try {
            subject.login(token);
        } catch (UnknownAccountException | IncorrectCredentialsException e1) {
            error = "用户名或密码错误";
        } catch (ExcessiveAttemptsException e) {
            //userService.lockAccountByNo(no);     // 锁定账户
            error = "超过了尝试登录的次数，您的账户已经被锁定。";
        } catch (AuthenticationException e) {    // 其他错误
            if (e.getMessage() != null)
                error = "发生错误：" + e.getMessage();
            else
                error = "发生错误，无法登录。";
        }
        return  "";
    }


}
