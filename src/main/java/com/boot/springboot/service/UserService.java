package com.boot.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.boot.springboot.repo.UserRepo;
import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import org.springframework.stereotype.Component;


@Component
public class UserService {
	@Autowired
	UserRepo userRepo;

	public void register(User user) {
		userRepo.register(user);
	}
	public boolean validateUser(Login login) {
		return userRepo.validateUser(login);
	}
	public User getUser(String userName) {
		return userRepo.getUser(userName);
	}

}
