package com.boot.springboot.service;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;

public interface UserService {
    void register(User user);
    boolean validateUser(Login login);
    User getUser(String userName);
}
