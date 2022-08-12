/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.hm.pojo.Candidate;
import com.hm.repository.CandidateRepository;
import com.hm.service.CandidateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ANHMINH
 */
@Service
@Transactional
public class CandidateServiceImpl implements CandidateService{
    
    @Autowired
    private CandidateRepository candidateRepository;
    
    @Override
    public boolean addCandidate(Candidate c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Candidate> getCandidate(int userID) {
        return candidateRepository.getCandidate(userID);
    }
    
}
