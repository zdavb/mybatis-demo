package com.dacas.spring.service;
import com.dacas.spring.dao.IUser;
import com.dacas.spring.model.User;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dave on 2016/9/7.
 */
@Service
public class UserService {
    @Resource
    IUser userManager;
    public User doWork(int id){
        User user = userManager.getUserById(id);

        User newUser = new User();
        newUser.setId(4);
        newUser.setName("mzg");
        newUser.setAge(21);
        newUser.setCountry("sig");
        userManager.addUser(newUser);

        return user;
    }
}
