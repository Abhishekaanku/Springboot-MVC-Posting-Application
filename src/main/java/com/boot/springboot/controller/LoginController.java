package com.boot.springboot.controller;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import com.boot.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller

public class LoginController {

  @Autowired
  UserService userService;
  
  @RequestMapping("/login")
  public String sayHello(Model model) {
     model.addAttribute("login", new Login());
     return "login";
  }
  
  
  @RequestMapping("/welcome")
  public String sayWelcome(Model model) {
     model.addAttribute("firstname",model.asMap().get("firstname"));
     return "welcome";
  }
  

  @PostMapping(value = "/login")
  public String loginProcess(Model model,@ModelAttribute("login") Login login,RedirectAttributes rm) {

    User user = userService.validateUser(login);

    if (null != user) {
    	rm.addFlashAttribute("firstname",user.getFirstname());
    	return "redirect:/welcome";

    } 
    else {

    model.addAttribute("login",new Login());

    model.addAttribute("message", "Username or Password is wrong!!");
    return "login";

    }

  }

}



