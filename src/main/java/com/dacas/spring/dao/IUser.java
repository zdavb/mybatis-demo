package com.dacas.spring.dao;

import com.dacas.spring.model.User;
/**
 * Created by dave on 2016/9/7.
 */
public interface IUser {
    User getUserById(int id);
    boolean deleteUser(User user);
    boolean addUser(User user);
    boolean updateUser(User user);
}
