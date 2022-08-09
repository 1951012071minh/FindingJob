package com.hm.pojo;

import com.hm.pojo.Candidate;
import com.hm.pojo.JobCategory;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-09T22:23:44")
@StaticMetamodel(CandidateCategory.class)
public class CandidateCategory_ { 

    public static volatile SingularAttribute<CandidateCategory, JobCategory> cateID;
    public static volatile SingularAttribute<CandidateCategory, Integer> id;
    public static volatile SingularAttribute<CandidateCategory, Candidate> candidateID;

}