package com.boot.springboot.controller;

import com.boot.springboot.model.User;
import com.boot.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RegistrationController {

  @Autowired
  public UserService userService;

  @RequestMapping("/register")
  public String showRegister(Model model) {
    
    model.addAttribute("user",new User());

    return "register";

  }

  @PostMapping("/register")
  public String addUser(Model model,@ModelAttribute("user") User user) {
	  userService.register(user);
	  model.addAttribute("firstname",user.getFirstname());
	  return "welcome";
  }
}
