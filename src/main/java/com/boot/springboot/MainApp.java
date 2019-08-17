package com.boot.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource({"classpath*:beans.xml"})
public class MainApp {
   public static void main(String[] args) {
      SpringApplication.run(MainApp.class, args);
   }
}
