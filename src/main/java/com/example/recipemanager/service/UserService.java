package com.example.recipemanager.service;

import com.example.recipemanager.model.User;

public interface UserService {
    User findByUserName(String name);
    void saveUser(User user);
}