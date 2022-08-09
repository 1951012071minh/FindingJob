package com.hm.pojo;

import com.hm.pojo.CandidateCompany;
import com.hm.pojo.CompanyMajor;
import com.hm.pojo.Job;
import com.hm.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-09T22:23:44")
@StaticMetamodel(Company.class)
public class Company_ { 

    public static volatile SingularAttribute<Company, String> address;
    public static volatile SingularAttribute<Company, String> city;
    public static volatile SetAttribute<Company, CandidateCompany> candidateCompanySet;
    public static volatile SingularAttribute<Company, String> name;
    public static volatile SingularAttribute<Company, String> description;
    public static volatile SetAttribute<Company, CompanyMajor> companyMajorSet;
    public static volatile SingularAttribute<Company, Integer> id;
    public static volatile SingularAttribute<Company, String> avatar;
    public static volatile SingularAttribute<Company, User> userID;
    public static volatile SingularAttribute<Company, String> email;
    public static volatile SetAttribute<Company, Job> jobSet;

}