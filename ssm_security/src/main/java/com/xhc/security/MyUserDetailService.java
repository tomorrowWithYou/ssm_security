package com.xhc.security;

import com.xhc.domain.Permission;
import com.xhc.domain.User;
import com.xhc.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * 自定义UserDetailService，实现UserDetailsService接口
 */
public class MyUserDetailService implements UserDetailsService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userMapper.findByUsername(username);
        if (user != null) {
            // 根据用户名查询用户的信息
            List<Permission> list = userMapper.findPermissionByUsername(username);
            List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
            for (Permission permission : list) {
                GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(permission.getPermTag());
                authorities.add(grantedAuthority);
            }
            user.setAuthorities(authorities);
        }
//        User user = new User("xhc1", "111111",
//                AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_USER"));
        return user;
    }
}
