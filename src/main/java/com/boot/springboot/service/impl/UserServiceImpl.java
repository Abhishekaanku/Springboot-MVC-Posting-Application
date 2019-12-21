package com.boot.springboot.service.impl;

import com.boot.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import com.boot.springboot.repo.UserRepo;
import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepo userRepo;

	@Override
	public void register(User user) {
		userRepo.register(user);
	}

	@Override
	public boolean validateUser(Login login) {
		return userRepo.validateUser(login);
	}

	@Override
	public User getUser(String userName) {
		return userRepo.getUser(userName);
	}

}
