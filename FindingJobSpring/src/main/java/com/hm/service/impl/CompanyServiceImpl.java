/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.hm.pojo.Company;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hm.repository.CompanyRepository;
import com.hm.service.CompanyService;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Service
@Transactional
public class CompanyServiceImpl implements CompanyService{
    @Autowired
    private CompanyRepository companyrepository;
    @Override
    public List<Company> getListCompany() {
        return this.companyrepository.getListCompany();
    }
    
}
