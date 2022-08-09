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
 * @author HP
 */
@Controller
public class CandidateController {
    @GetMapping("/signincandidate")
    public String signinCandidateView() {
        return "signincandidate";
    }
    
    @PostMapping("/signincandidate")
    public String signinCandidate() {
        return "signincandidate";
    }
}
