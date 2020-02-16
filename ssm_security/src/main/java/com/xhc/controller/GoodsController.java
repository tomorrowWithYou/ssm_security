package com.xhc.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 商品
 *
 * @author xuhongchang
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {

    /**
     * 商品首页
     *
     * @return
     */
    @RequestMapping("/index")
    public String index(Model model) {
        //获取登录后用户: UserDetail对象
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if(principal!=null){
            if(principal instanceof  UserDetails){
                UserDetails userDetails = (UserDetails)principal;
                String username = userDetails.getUsername();
                model.addAttribute("username",username);
            }
        }
        return "index";
    }

    /**
     * 商品新增
     *
     * @return
     */
    @RequestMapping("/add")
    public String add() {
        return "goods/addGoods";
    }

    /**
     * 商品修改
     *
     * @return
     */
    @RequestMapping("/update")
    public String update() {
        return "goods/updateGoods";
    }

    /**
     * 商品删除
     *
     * @return
     */
    @RequestMapping("/delete")
    public String delete() {
        return "goods/deleteGoods";
    }

    /**
     * 商品展示
     *
     * @return
     */
    @RequestMapping("/list")
    public String list() {
        return "goods/listGoods";
    }
}
