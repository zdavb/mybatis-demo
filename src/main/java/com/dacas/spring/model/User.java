package com.dacas.spring.model;

/**
 * Created by dave on 2016/9/7.
 */
public class User {
    int id;
    String name;
    int age;
    String country;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String toString(){
        return "id:"+id+",name:"+name+",age:"+age+",country:"+country;
    }
}
