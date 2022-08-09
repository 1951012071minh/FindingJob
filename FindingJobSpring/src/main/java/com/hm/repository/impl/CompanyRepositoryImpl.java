/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.repository.impl;


import com.hm.pojo.Company;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.hm.repository.CompanyRepository;

/**
 *
 * @author HP
 */
@Repository
@Transactional
public class CompanyRepositoryImpl implements CompanyRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Company> getListCompany() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        String hql = "FROM Company";
        Query query = s.createQuery(hql);
        return query.getResultList();
    }
    
    
    

}
