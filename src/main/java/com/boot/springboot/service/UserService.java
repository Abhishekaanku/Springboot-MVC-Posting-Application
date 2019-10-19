package com.boot.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.boot.springboot.dao.UserDao;
import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import org.springframework.stereotype.Component;


@Component
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
