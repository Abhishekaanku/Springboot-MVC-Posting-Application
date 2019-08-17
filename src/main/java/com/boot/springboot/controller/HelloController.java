package com.boot.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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

   @PostMapping("/hello")
   public String sayHello(@RequestParam String name, Model model) {
      model.addAttribute("name", name);
      return "hello";
   }
}
