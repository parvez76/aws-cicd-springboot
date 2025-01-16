package com.example.spring_demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class TestController {

    @GetMapping("/data")
    public String getData() {
       return "Hello AWS!";
    }


    @GetMapping("/message")
    public String getMessage() {
       return "Hello AWS From another Page!";
    }
}