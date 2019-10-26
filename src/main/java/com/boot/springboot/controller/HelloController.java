package com.boot.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

   @RequestMapping("/")
   public String home() {
      return "home";
   }
   
   @RequestMapping("/name")
   public String index() {
      return "index";
   }

   @GetMapping("/hello")
   public String sayHello(/*@RequestParam String name,*/ Model model) {
//      model.addAttribute("name", name);
      return "redirect:/error";
   }
}
