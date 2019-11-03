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
    public String sayWelcome(Model model, @PathVariable(value = "userName") String userName)
            throws IOException {
        if(1==1) {
            User user=userService.getUser(userName);
            if (user==null) {
                return "error";
            }

            FileInputStream in = new FileInputStream(new File(user.getProfilePicture()));
            byte[] data = new byte[in.available()];
            in.read(data);
            String base64 = Base64.getEncoder().encodeToString(data);

            model.addAttribute("user",user);
            model.addAttribute("image",base64);
            return "welcome";
        }
        else {
            return "login";
        }
    }


    @PostMapping(value = "/login")
    public String loginProcess(Model model, @ModelAttribute("login") @Valid Login login,
                               Errors errors) {
        if (errors.hasErrors()) {
            model.addAttribute("message", "Invalid Input");
            return "login";
        }

        if (userService.validateUser(login)) {
            model.addAttribute("userName", login.getUserName());
            return "redirect:/users/{userName}";
        }
        model.addAttribute("message", "Username or Password is wrong!!");
        return "login";
    }
}



