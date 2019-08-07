package com.vpi.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class User {
    private  Integer id;
    private  String username;
    private  String real_name;
    private  String password;
    private  Integer gender;// 性别：1 女  2 男
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private  Integer user_type;// '1管理员  2经理  3普通用户'

    /*`id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `real_name` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL COMMENT '性别：1 女  2 男',
  `birthday` datetime DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '1管理员  2经理  3普通用户',*/



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getReal_name() {
        return real_name;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getUser_type() {
        return user_type;
    }

    public void setUser_type(Integer user_type) {
        this.user_type = user_type;
    }

    //打印对象的功能
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", real_name='" + real_name + '\'' +
                ", password='" + password + '\'' +
                ", gender=" + gender +
                ", birthday=" + birthday +
                ", user_type=" + user_type +
                '}';
    }

    //框架中需要用
    public User() {
    }
}
