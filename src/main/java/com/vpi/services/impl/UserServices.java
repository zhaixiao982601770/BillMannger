package com.vpi.services.impl;

import com.vpi.dao.UserDao;
import com.vpi.model.User;
import com.vpi.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public  class UserServices implements UserService {
    @Autowired
    UserDao userDao;

    /*用户登录检查*/

    @Override
    public User goUserLogin(User user) {
        User goUserLogin=userDao.goUserLogin(user);

        return goUserLogin;
    }

    /*获取值User*/
    @Override
    public List<User> findAll() {
        List<User> userList=userDao.findAll();
        return userList;
    }


    /*添加用户*/
    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    /*删除用户*/
    @Override
    public int deleteUser(User user) {
        return userDao.deleteUser(user);
    }

    /*根据id显示用户*/
    @Override
    public User showUser(User user) {
        return userDao.showUser(user);
    }


    /*根据id修改用户*/
    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    /*条件查询*/
    @Override
    public List<User> findUserByParam(User findUser) {
        List<User>  userList = userDao.findUserByParam(findUser);
        return userList;
    }
}

