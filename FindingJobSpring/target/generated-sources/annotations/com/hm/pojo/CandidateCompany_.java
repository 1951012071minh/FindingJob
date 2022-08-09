package com.hm.pojo;

import com.hm.pojo.Candidate;
import com.hm.pojo.Company;
import com.hm.pojo.Job;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-09T22:23:44")
@StaticMetamodel(CandidateCompany.class)
public class CandidateCompany_ { 

    public static volatile SingularAttribute<CandidateCompany, String> assessment;
    public static volatile SingularAttribute<CandidateCompany, Job> jobID;
    public static volatile SingularAttribute<CandidateCompany, Company> companyID;
    public static volatile SingularAttribute<CandidateCompany, Date> endDate;
    public static volatile SingularAttribute<CandidateCompany, Date> startDay;
    public static volatile SingularAttribute<CandidateCompany, Integer> rating;
    public static volatile SingularAttribute<CandidateCompany, Integer> isLiked;
    public static volatile SingularAttribute<CandidateCompany, Integer> id;
    public static volatile SingularAttribute<CandidateCompany, Candidate> candidateID;

}