package com.hm.pojo;

import com.hm.pojo.Category;
import com.hm.pojo.Job;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T00:03:35")
@StaticMetamodel(JobCategory.class)
public class JobCategory_ { 

    public static volatile SingularAttribute<JobCategory, Job> jobID;
    public static volatile SingularAttribute<JobCategory, Category> cateID;
    public static volatile SingularAttribute<JobCategory, Integer> id;
    public static volatile SingularAttribute<JobCategory, Double> point;

}