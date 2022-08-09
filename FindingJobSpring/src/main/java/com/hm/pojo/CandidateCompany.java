/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

/**
 *
 * @author ANHMINH
 */
@Entity
@Table(name = "candidate_company")
@NamedQueries({
    @NamedQuery(name = "CandidateCompany.findAll", query = "SELECT c FROM CandidateCompany c"),
    @NamedQuery(name = "CandidateCompany.findById", query = "SELECT c FROM CandidateCompany c WHERE c.id = :id"),
    @NamedQuery(name = "CandidateCompany.findByStartDay", query = "SELECT c FROM CandidateCompany c WHERE c.startDay = :startDay"),
    @NamedQuery(name = "CandidateCompany.findByEndDate", query = "SELECT c FROM CandidateCompany c WHERE c.endDate = :endDate"),
    @NamedQuery(name = "CandidateCompany.findByRating", query = "SELECT c FROM CandidateCompany c WHERE c.rating = :rating"),
    @NamedQuery(name = "CandidateCompany.findByAssessment", query = "SELECT c FROM CandidateCompany c WHERE c.assessment = :assessment"),
    @NamedQuery(name = "CandidateCompany.findByIsLiked", query = "SELECT c FROM CandidateCompany c WHERE c.isLiked = :isLiked")})
public class CandidateCompany implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "StartDay")
    @Temporal(TemporalType.DATE)
    private Date startDay;
    @Column(name = "EndDate")
    @Temporal(TemporalType.DATE)
    private Date endDate;
    @Column(name = "Rating")
    private Integer rating;
    @Size(max = 300)
    @Column(name = "Assessment")
    private String assessment;
    @Column(name = "IsLiked")
    private Integer isLiked;
    @JoinColumn(name = "Candidate_ID", referencedColumnName = "ID")
    @ManyToOne
    private Candidate candidateID;
    @JoinColumn(name = "Company_ID", referencedColumnName = "ID")
    @ManyToOne
    private Company companyID;
    @JoinColumn(name = "Job_ID", referencedColumnName = "ID")
    @ManyToOne
    private Job jobID;

    public CandidateCompany() {
    }

    public CandidateCompany(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStartDay() {
        return startDay;
    }

    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public String getAssessment() {
        return assessment;
    }

    public void setAssessment(String assessment) {
        this.assessment = assessment;
    }

    public Integer getIsLiked() {
        return isLiked;
    }

    public void setIsLiked(Integer isLiked) {
        this.isLiked = isLiked;
    }

    public Candidate getCandidateID() {
        return candidateID;
    }

    public void setCandidateID(Candidate candidateID) {
        this.candidateID = candidateID;
    }

    public Company getCompanyID() {
        return companyID;
    }

    public void setCompanyID(Company companyID) {
        this.companyID = companyID;
    }

    public Job getJobID() {
        return jobID;
    }

    public void setJobID(Job jobID) {
        this.jobID = jobID;
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
        if (!(object instanceof CandidateCompany)) {
            return false;
        }
        CandidateCompany other = (CandidateCompany) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.CandidateCompany[ id=" + id + " ]";
    }
    
}
