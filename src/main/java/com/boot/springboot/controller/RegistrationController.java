package com.boot.springboot.controller;

import com.boot.springboot.model.User;
import com.boot.springboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Part;
import javax.validation.Valid;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;


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
  public String addUser(RedirectAttributes model, @RequestPart("profilePic") Part profilePic,
                        @ModelAttribute("user")@Valid User user, Errors errors) throws IOException{
      if(errors.hasErrors()) {
        model.addAttribute("message","Invalid Input");
        return "register";
      }
      String filePath="/home/aparna/test/dp/"+profilePic.getSubmittedFileName();
      user.setProfilePicture(filePath);
      userService.register(user);
      profilePic.write(filePath);
      byte[] data=new byte[(int)profilePic.getSize()];
      profilePic.getInputStream().read(data);
      String base64= Base64.getEncoder().encodeToString(data);
      model.addFlashAttribute("image",base64);
      model.addFlashAttribute("user",user);
      model.addAttribute("userName",user.getUserName());
      return "redirect:/users/{userName}";
  }
}
