package com.hm.pojo;

import com.hm.pojo.CandidateCompany;
import com.hm.pojo.CandidateJob;
import com.hm.pojo.Company;
import com.hm.pojo.JobCategory;
import com.hm.pojo.JobMajor;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T21:23:12")
@StaticMetamodel(Job.class)
public class Job_ { 

    public static volatile SetAttribute<Job, JobMajor> jobMajorSet;
    public static volatile SingularAttribute<Job, String> degreeRequired;
    public static volatile SingularAttribute<Job, Integer> quantity;
    public static volatile SingularAttribute<Job, Date> endDate;
    public static volatile SetAttribute<Job, CandidateJob> candidateJobSet;
    public static volatile SetAttribute<Job, CandidateCompany> candidateCompanySet;
    public static volatile SingularAttribute<Job, Double> probationaryPeriod;
    public static volatile SingularAttribute<Job, String> description;
    public static volatile SingularAttribute<Job, String> name;
    public static volatile SingularAttribute<Job, BigInteger> salary;
    public static volatile SingularAttribute<Job, Integer> isChecked;
    public static volatile SingularAttribute<Job, String> benefit;
    public static volatile SingularAttribute<Job, String> sexRequired;
    public static volatile SingularAttribute<Job, Company> companyID;
    public static volatile SingularAttribute<Job, Integer> isContinute;
    public static volatile SingularAttribute<Job, Integer> ageFrom;
    public static volatile SingularAttribute<Job, Integer> id;
    public static volatile SingularAttribute<Job, Integer> ageTo;
    public static volatile SetAttribute<Job, JobCategory> jobCategorySet;

}