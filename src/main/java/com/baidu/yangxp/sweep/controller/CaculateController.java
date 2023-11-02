package com.baidu.yangxp.sweep.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/caculate")
public class CaculateController {
    @RequestMapping("/sum")
    @ResponseBody
    public int sum(@RequestParam("a") int a, @RequestParam("b") int b){
        return a+b;
    }
}
