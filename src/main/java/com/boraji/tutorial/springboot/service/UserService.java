package com.boraji.tutorial.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.boraji.tutorial.springboot.dao.UserDao;
import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.model.User;


public class UserService {
	@Autowired
	UserDao userDao;
	public void register(User user) {
		userDao.register(user);
	}
	public User validateUser(Login login) {
		return userDao.validateUser(login);
	}

}
