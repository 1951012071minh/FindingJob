/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;


import com.hm.pojo.User;
import com.hm.service.UserService;
import com.hm.validators.WebAppValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class UserController {
    @Autowired
    private UserService userDetailService;
    
    @Autowired
    private WebAppValidator userValidator;
    
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.setValidator(userValidator);
    }
    
    
    @GetMapping("/login")
    public String Login (Model model) {
        
        return "login";
    }
    
    
    @GetMapping("/signincandidate")
    public String signincandidateView(Model model){
        model.addAttribute("user", new User());
        return "signincandidate";
    }
    
    @PostMapping("/signincandidate")
    public String signincandidate(@ModelAttribute(value ="user")@Valid  User user,
            BindingResult r){
        
//        if (r.hasErrors()) {
//            return new ModelAndView("signincandidate");
//        }
        
        if (this.userDetailService.addUser(user) == true){
            return "signincandidate1";
        }
        
        return "signincandidate1";
    }
    
    
}
