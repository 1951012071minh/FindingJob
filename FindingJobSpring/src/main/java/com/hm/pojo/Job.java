/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author ANHMINH
 */
@Entity
@Table(name = "job")
@NamedQueries({
    @NamedQuery(name = "Job.findAll", query = "SELECT j FROM Job j"),
    @NamedQuery(name = "Job.findById", query = "SELECT j FROM Job j WHERE j.id = :id"),
    @NamedQuery(name = "Job.findByDescription", query = "SELECT j FROM Job j WHERE j.description = :description"),
    @NamedQuery(name = "Job.findBySalary", query = "SELECT j FROM Job j WHERE j.salary = :salary"),
    @NamedQuery(name = "Job.findByEndDate", query = "SELECT j FROM Job j WHERE j.endDate = :endDate"),
    @NamedQuery(name = "Job.findByQuantity", query = "SELECT j FROM Job j WHERE j.quantity = :quantity"),
    @NamedQuery(name = "Job.findByDegreeRequired", query = "SELECT j FROM Job j WHERE j.degreeRequired = :degreeRequired"),
    @NamedQuery(name = "Job.findByAgeTo", query = "SELECT j FROM Job j WHERE j.ageTo = :ageTo"),
    @NamedQuery(name = "Job.findByAgeFrom", query = "SELECT j FROM Job j WHERE j.ageFrom = :ageFrom"),
    @NamedQuery(name = "Job.findByIsChecked", query = "SELECT j FROM Job j WHERE j.isChecked = :isChecked"),
    @NamedQuery(name = "Job.findByIsContinute", query = "SELECT j FROM Job j WHERE j.isContinute = :isContinute"),
    @NamedQuery(name = "Job.findBySexRequired", query = "SELECT j FROM Job j WHERE j.sexRequired = :sexRequired"),
    @NamedQuery(name = "Job.findByProbationaryPeriod", query = "SELECT j FROM Job j WHERE j.probationaryPeriod = :probationaryPeriod"),
    @NamedQuery(name = "Job.findByBenefit", query = "SELECT j FROM Job j WHERE j.benefit = :benefit")})
public class Job implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Size(max = 500)
    @Column(name = "Description")
    private String description;
    @Column(name = "Salary")
    private BigInteger salary;
    @Column(name = "EndDate")
    @Temporal(TemporalType.DATE)
    private Date endDate;
    @Column(name = "Quantity")
    private Integer quantity;
    @Size(max = 200)
    @Column(name = "DegreeRequired")
    private String degreeRequired;
    @Column(name = "AgeTo")
    private Integer ageTo;
    @Column(name = "AgeFrom")
    private Integer ageFrom;
    @Column(name = "IsChecked")
    private Integer isChecked;
    @Column(name = "IsContinute")
    private Integer isContinute;
    @Size(max = 10)
    @Column(name = "SexRequired")
    private String sexRequired;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ProbationaryPeriod")
    private Double probationaryPeriod;
    @Size(max = 500)
    @Column(name = "Benefit")
    private String benefit;
    @OneToMany(mappedBy = "jobID")
    private Set<CandidateJob> candidateJobSet;
    @OneToMany(mappedBy = "jobID")
    private Set<CandidateCompany> candidateCompanySet;
    @OneToMany(mappedBy = "jobID")
    private Set<JobMajor> jobMajorSet;
    @JoinColumn(name = "Company_ID", referencedColumnName = "ID")
    @ManyToOne
    private Company companyID;
    @OneToMany(mappedBy = "jobID")
    private Set<JobCategory> jobCategorySet;

    public Job() {
    }

    public Job(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigInteger getSalary() {
        return salary;
    }

    public void setSalary(BigInteger salary) {
        this.salary = salary;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getDegreeRequired() {
        return degreeRequired;
    }

    public void setDegreeRequired(String degreeRequired) {
        this.degreeRequired = degreeRequired;
    }

    public Integer getAgeTo() {
        return ageTo;
    }

    public void setAgeTo(Integer ageTo) {
        this.ageTo = ageTo;
    }

    public Integer getAgeFrom() {
        return ageFrom;
    }

    public void setAgeFrom(Integer ageFrom) {
        this.ageFrom = ageFrom;
    }

    public Integer getIsChecked() {
        return isChecked;
    }

    public void setIsChecked(Integer isChecked) {
        this.isChecked = isChecked;
    }

    public Integer getIsContinute() {
        return isContinute;
    }

    public void setIsContinute(Integer isContinute) {
        this.isContinute = isContinute;
    }

    public String getSexRequired() {
        return sexRequired;
    }

    public void setSexRequired(String sexRequired) {
        this.sexRequired = sexRequired;
    }

    public Double getProbationaryPeriod() {
        return probationaryPeriod;
    }

    public void setProbationaryPeriod(Double probationaryPeriod) {
        this.probationaryPeriod = probationaryPeriod;
    }

    public String getBenefit() {
        return benefit;
    }

    public void setBenefit(String benefit) {
        this.benefit = benefit;
    }

    public Set<CandidateJob> getCandidateJobSet() {
        return candidateJobSet;
    }

    public void setCandidateJobSet(Set<CandidateJob> candidateJobSet) {
        this.candidateJobSet = candidateJobSet;
    }

    public Set<CandidateCompany> getCandidateCompanySet() {
        return candidateCompanySet;
    }

    public void setCandidateCompanySet(Set<CandidateCompany> candidateCompanySet) {
        this.candidateCompanySet = candidateCompanySet;
    }

    public Set<JobMajor> getJobMajorSet() {
        return jobMajorSet;
    }

    public void setJobMajorSet(Set<JobMajor> jobMajorSet) {
        this.jobMajorSet = jobMajorSet;
    }

    public Company getCompanyID() {
        return companyID;
    }

    public void setCompanyID(Company companyID) {
        this.companyID = companyID;
    }

    public Set<JobCategory> getJobCategorySet() {
        return jobCategorySet;
    }

    public void setJobCategorySet(Set<JobCategory> jobCategorySet) {
        this.jobCategorySet = jobCategorySet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Job)) {
            return false;
        }
        Job other = (Job) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.Job[ id=" + id + " ]";
    }
    
}
