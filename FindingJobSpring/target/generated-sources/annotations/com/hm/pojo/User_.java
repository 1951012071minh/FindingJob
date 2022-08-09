package com.hm.pojo;

import com.hm.pojo.Administator;
import com.hm.pojo.Candidate;
import com.hm.pojo.Company;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-09T22:23:44")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SetAttribute<User, Administator> administatorSet;
    public static volatile SetAttribute<User, Candidate> candidateSet;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> userRole;
    public static volatile SetAttribute<User, Company> companySet;
    public static volatile SingularAttribute<User, String> username;
    public static volatile SingularAttribute<User, Date> registerDate;

}