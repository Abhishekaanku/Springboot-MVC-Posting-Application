package com.boot.springboot.dao;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;

public interface UserDao {

  void register(User user);

  User validateUser(Login login);

}
