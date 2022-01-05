package cn.yuisean.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DefaultController {


    @GetMapping("/sayHello")
    public String sayHello(){
        return "I love you yuisean❥(^_-)";
    }

}
