package com.violin.controller.security;

import com.violin.model.useraccount.UserAccount;
import com.violin.service.useraccount.UserAccountService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserAccountService userAccountService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String userName = (String)principalCollection.getPrimaryPrincipal();
        UserAccount user = userAccountService.findUserAccountById(userName);
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        //authorizationInfo.setRoles(userAccountService.findRolesByUserId(user.getId()));
        //authorizationInfo.setStringPermissions(userAccountService.findPermissionsByUserId(user.getId()));
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String userName= (String)authenticationToken.getPrincipal();
        UserAccount user = userAccountService.findUserAccountById(userName);
        if(user == null) {
            throw new UnknownAccountException();//没找到账户
        }
        if(user.getId() == 0) {
            throw new LockedAccountException(); //帐号锁定
        }
        if(user.getId() == 2){
            throw new AuthenticationException("account was inactive");
        }

        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user.getAccountName(), // 用户名
                user.getAccountPwd(), // 密码
                ByteSource.Util.bytes(user.getLastTime()),    // salt
                getName()  // realm name
        );
        return authenticationInfo;
    }
}