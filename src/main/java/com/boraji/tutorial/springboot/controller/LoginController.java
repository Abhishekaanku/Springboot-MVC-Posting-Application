package com.boraji.tutorial.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boraji.tutorial.springboot.model.Login;
import com.boraji.tutorial.springboot.model.User;
import com.boraji.tutorial.springboot.service.UserService;


@Controller

public class LoginController {

  @Autowired
  UserService userService;
  
  @RequestMapping("/login")
  public String sayHello(Model model) {
     model.addAttribute("login", new Login());
     return "login";
  }
  

  @PostMapping(value = "/login")
  public String loginProcess(Model model,@ModelAttribute("login") Login login) {

    User user = userService.validateUser(login);

    if (null != user) {

    	model.addAttribute("firstname",user.getFirstname());
    	return "welcome";

    } 
    else {

    model.addAttribute("login",new Login());

    model.addAttribute("message", "Username or Password is wrong!!");
    return "login";

    }

  }

}



