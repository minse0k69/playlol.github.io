package com.rest.api.controller;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/helloworld")
public class HelloController {

    @GetMapping("/string")
    @ResponseBody
    public String helloWorldString(){
        return "helloworld222";
    }

    @GetMapping("/page")
    public String helloWorld() {
        return "helloworld";
    }

    @GetMapping("/json")
    @ResponseBody
    public Hello helloWorldJson() {
        Hello hello = new Hello();
        hello.message = "helloWorld";
        return hello;
    }

    @Getter
    @Setter
    public static class Hello {
        private String message;
    }
}
