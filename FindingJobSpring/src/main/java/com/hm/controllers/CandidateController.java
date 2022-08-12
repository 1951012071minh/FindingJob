/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.pojo.Candidate;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author HP
 */
@Controller
public class CandidateController {
    
    @RequestMapping(value = "/signincandidate/info", method = RequestMethod.GET) 
    public String signinCandidateView(Model model) {
        model.addAttribute("candidate", new Candidate());
        return "signincandidate1";
    }
    
    @RequestMapping(value = "/signincandidate/info", method = RequestMethod.POST) 
    public String signinCandidate(@ModelAttribute(value ="candidate") @Valid Candidate candidate, BindingResult r ) {
        
        return "signincandidate1";
    }
    @GetMapping("/signincandidate2")
    public String signinCandidateView2() {
        return "signincandidate2";
    }
    
    @PostMapping("/signincandidate2")
    public String signinCandidate2() {
        return "signincandidate2";
    }
}
