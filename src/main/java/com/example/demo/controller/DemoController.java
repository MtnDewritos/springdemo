package com.example.demo.controller;

import com.example.demo.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @Autowired
    private DemoService demoService;

    @GetMapping("/encrypt")
    public String encrypt(@RequestParam String text, @RequestParam int key) {
        return demoService.encrypt(text, key);
    }
    @GetMapping("/decrypt")
    public String decrypt(@RequestParam int key) {
        return demoService.decrypt(key);
    }

}
