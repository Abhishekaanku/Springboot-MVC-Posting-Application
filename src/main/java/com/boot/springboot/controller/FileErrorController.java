package com.boot.springboot.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.FileNotFoundException;
import java.io.IOException;

@ControllerAdvice
public class FileErrorController {
    @ExceptionHandler({IOException.class, FileNotFoundException.class})
    public String fileErrorPage(Model model) {
        model.addAttribute("error_msg","Exception in readinng file");
        return "errorFile";
    }
}
