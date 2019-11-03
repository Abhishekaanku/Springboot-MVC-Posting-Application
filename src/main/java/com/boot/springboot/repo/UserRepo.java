package com.boot.springboot.repo;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;

public interface UserRepo {

    void register(User user);

    boolean validateUser(Login login);

    User getUser(String userName);

}
