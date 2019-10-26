package com.boot.springboot.controller;

import com.boot.springboot.model.Login;
import com.boot.springboot.model.User;
import com.boot.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Base64;


@Controller

public class LoginController {

  @Autowired
  UserService userService;
  
  @RequestMapping("/login")
  public String sayHello(Model model) {
     model.addAttribute("login", new Login());
     return "login";
  }
  
  
  @RequestMapping("/users/{userName}")
  public String sayWelcome(Model model, @PathVariable(value = "userName")String userName) {
     if(!model.containsAttribute("user")) {
         return "error";
     }
     return "welcome";
  }
  

  @PostMapping(value = "/login")
  public String loginProcess(Model model,RedirectAttributes redirectModel,
                             @ModelAttribute("login") @Valid Login login, Errors errors) throws IOException,FileNotFoundException{
    if(errors.hasErrors()) {
      model.addAttribute("message","Invalid Input");
      return "login";
    }

    User user = userService.validateUser(login);

    if (null != user) {
        FileInputStream in=new FileInputStream(new File(user.getProfilePicture()));
        byte[] data=new byte[in.available()];
        in.read(data);
        String base64= Base64.getEncoder().encodeToString(data);
        redirectModel.addFlashAttribute("image",base64);
        redirectModel.addFlashAttribute("user",user);
        redirectModel.addAttribute("userName",user.getUserName());
        return "redirect:/users/{userName}";
    }
    model.addAttribute("message", "Username or Password is wrong!!");
    return "login";
  }
}



