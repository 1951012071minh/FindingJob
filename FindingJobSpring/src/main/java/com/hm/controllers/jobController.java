/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author ANHMINH
 */
@Controller
public class jobController {
    @GetMapping("/jobpage")
    public String jobpageView() {
        return "jobpage";
    }
    
    @PostMapping("/jobpage")
    public String jobpage() {
        return "jobpage";
    }
    @GetMapping("/detailjob")
    public String detailjobView() {
        return "detailjob";
    }
    
    @PostMapping("/detailjob")
    public String detailjob() {
        return "detailjob";
    }
}
