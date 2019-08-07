package com.vpi.services;

import com.vpi.model.User;

import java.util.List;

public interface UserService {
    //
    User goUserLogin(User user);
    //xianshi
    List<User> findAll();

    /*添加用户*/
    int addUser(User user);
    //shanchu
    int deleteUser(User user);

    User showUser(User user);

    int updateUser(User user);

    List<User> findUserByParam(User findUser);
}
