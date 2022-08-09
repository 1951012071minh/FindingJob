package com.hm.pojo;

import com.hm.pojo.CandidateCategory;
import com.hm.pojo.CandidateCompany;
import com.hm.pojo.CandidateJob;
import com.hm.pojo.CandidateMajor;
import com.hm.pojo.CurriculumVitae;
import com.hm.pojo.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T00:03:35")
@StaticMetamodel(Candidate.class)
public class Candidate_ { 

    public static volatile SingularAttribute<Candidate, String> city;
    public static volatile SetAttribute<Candidate, CandidateJob> candidateJobSet;
    public static volatile SetAttribute<Candidate, CandidateCompany> candidateCompanySet;
    public static volatile SetAttribute<Candidate, CandidateCategory> candidateCategorySet;
    public static volatile SingularAttribute<Candidate, String> description;
    public static volatile SingularAttribute<Candidate, Date> dateOfBirth;
    public static volatile SingularAttribute<Candidate, String> avatar;
    public static volatile SingularAttribute<Candidate, User> userID;
    public static volatile SetAttribute<Candidate, CandidateMajor> candidateMajorSet;
    public static volatile SingularAttribute<Candidate, Integer> id;
    public static volatile SingularAttribute<Candidate, String> fullname;
    public static volatile SetAttribute<Candidate, CurriculumVitae> curriculumVitaeSet;
    public static volatile SingularAttribute<Candidate, String> email;

}