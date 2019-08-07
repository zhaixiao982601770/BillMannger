package com.vpi.dao;

import com.vpi.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface UserDao {
    User goUserLogin(User user);

    List<User> findAll();

    int addUser(User user);

    int deleteUser(User user);

    User showUser(User user);

    int updateUser(User user);

    List<User> findUserByParam(User findUser);
}
