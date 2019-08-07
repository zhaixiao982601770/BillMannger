package com.vpi.controller;


import com.vpi.model.User;
import com.vpi.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller

public class UserController {


    /*跳转登录*/
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/goLogin")
    public String goLogin(){

        return "/main/login";
    }

    /*用户登录界面*/
    @RequestMapping(value = "/userLogin")
    public  String goUserLogin(User user,HttpServletRequest req) {
        System.out.println(user);
        User goUserLogin = userService.goUserLogin(user);
        //判断用户是否为空
        if (goUserLogin != null) {
            HttpSession session=req.getSession();
            session.setAttribute("goUserLogin",goUserLogin);
            System.out.println("用户存在");
            return "/main/index";
        } else {
            System.out.println("用户不存在");
            return "/main/login";
        }
    }

//用户界面显示信息
    @RequestMapping (value = "/goUserList")
    public String goUserList(ModelMap modelMap){
        //前台接收值
        //后台处理
        List<User> userList = userService.findAll();
        //把接收的值存起
        modelMap.addAttribute("userList",userList);
        //最后跳转到显示页面
        return  "user/list";
    }
    /*@RequestMapping (value = "/goUserList")
    public ModelAndView goUserList(){
        ModelAndView mav =new ModelAndView();
        //前台接收值
        //后台处理
        List<User> userList = userService.findAll();
        //把接收的值存起
        mav.addObject("userList",userList);
        //最后跳转到显示页面
        mav.setViewName("user/list");
        return  mav;
    }*/


    /*
    * 跳转添加用户界面
    *
    * */
    @RequestMapping (value = "/goAdd")
    public String goAdd(){
        return  "/user/add";
    }

    /*
     * 添加用户
     *
     * */
    @RequestMapping (value = "/addUser")
    public String addUser(User user){
        //前台接收值
        System.out.println(user);
        //后台处理
        int i = userService.addUser(user);
        //最后跳转到显示页面
        if (i>0){//成功去用户列表页面
            return "redirect:/goUserList";
        }else {//返回原来页面
            return "redirect:/addUser";
        }
    }


    /*
     * 删除用户
     *
     * */
    @RequestMapping (value = "/deleteUser")
    public String deleteUser(User user){
        //前台接收值
        System.out.println(user.getId());
        //后台处理
        int i = userService.deleteUser(user);
        //最后跳转到显示页面
            return "redirect:/goUserList";
    }

    /*
     * 查看用户（根据id）
     *
     * */
    @RequestMapping(value = "/showUser")
    public  String showUser(User user,Model model){
        //前台接收值
        //后台处理
        User showUser=userService.showUser(user);
        //把接收的值存起
        model.addAttribute("showUser",showUser);
        //最后跳转到显示页面
        return "/user/view";
    }

    /*
     * 跳转修改用户信息界面
     *
     * */
    @RequestMapping(value = "/goUpdateUser")
    public String goUpdateUser(User user,Model model){
        //前台接收值
        // 后台处理(获取信息)
        User showUser=userService.showUser(user);
        //把接收的值存起
        model.addAttribute("showUser",showUser);
        //最后跳转到显示页面
        return "/user/update";
    }


    /*
    * 修改用户信息
    *
    * */
    @RequestMapping(value = "/updateUser")
    public  String updateUser(User user) {
        //前台接收值
        //后台处理
        System.out.println(user);
        int i =userService.updateUser(user);
        System.out.println("\n\n"+i+"\n\n");
        //最后跳转到显示页面
        if (i>0){
            return "redirect:/goUserList";
        }else {
            return "redirect:/goUpdateUser";
        }
    }


    /**
     * 条件查询用户
     */
    @RequestMapping(value = "/findUserByParam")
    public String findUserByParam(User findUser,Model model){
        // 1.前台接值
        System.out.println(findUser);
        // 2.后台处理
        List<User> userList = userService.findUserByParam(findUser);
        System.out.println(userList);
        // 3.存值
        model.addAttribute("userList",userList);
        model.addAttribute("findUser",findUser);
        // 4.跳页面
        return "/user/list";

    }
}
