package com.boot.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/error")
public class ErrorController {

    @GetMapping
    public String commonError(Model model) {
        model.addAttribute("error_msg","Given Path not found");
        return "error";
    }
}
