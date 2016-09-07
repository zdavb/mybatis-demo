package com.dacas.spring.controller;
import com.dacas.spring.model.User;
import com.dacas.spring.service.UserService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by dave on 2016/9/7.
 */
@Controller
public class UserController {
    @Autowired
    UserService service;

    @RequestMapping("/hello")
    @ResponseBody
    public String hello(@RequestParam(value="id") int id){
//        if(id == null){
//            return "{'reason':'wrong parameter'}";
//        }
        User user = service.doWork(id);
        System.out.println(user);
        Gson gson = new Gson();
        return gson.toJson(user);
    }
}
