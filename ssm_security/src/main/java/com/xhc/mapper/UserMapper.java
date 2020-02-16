package com.xhc.mapper;

import com.xhc.domain.Permission;
import com.xhc.domain.User;
import java.util.List;


public interface UserMapper {
    /**
     * 查询当前用户对象
     */
    public User findByUsername(String username);

    /**
     * 查询当前用户拥有的权限
     */
    public List<Permission> findPermissionByUsername(String username);


}
