package com.boraji.tutorial.springboot.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.model.User;
import com.boraji.tutorial.springboot.service.UserService;



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
