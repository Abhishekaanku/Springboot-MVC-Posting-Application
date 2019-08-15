package com.boraji.tutorial.springboot.dao;

import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.model.User;

public interface UserDao {

  void register(User user);

  User validateUser(Login login);

}
