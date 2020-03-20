package com.boot.springboot.controller;

import com.boot.springboot.model.UserSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
   @Autowired
   UserSession userSession;

   @RequestMapping("/")
   public String home(Model model) {
      String activeUser=userSession.getActiveUser();
      if(activeUser==null) {
         return "redirect:/login";
      }
      else {
//         model.addAttribute("userName",activeUser);
         return "redirect:/users/"+activeUser;
      }
   }
}
