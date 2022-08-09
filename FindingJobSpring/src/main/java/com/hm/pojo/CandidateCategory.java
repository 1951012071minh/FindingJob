/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANHMINH
 */
@Entity
@Table(name = "candidate_category")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CandidateCategory.findAll", query = "SELECT c FROM CandidateCategory c"),
    @NamedQuery(name = "CandidateCategory.findById", query = "SELECT c FROM CandidateCategory c WHERE c.id = :id")})
public class CandidateCategory implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @JoinColumn(name = "Candidate_ID", referencedColumnName = "ID")
    @ManyToOne
    private Candidate candidateID;
    @JoinColumn(name = "Cate_ID", referencedColumnName = "ID")
    @ManyToOne
    private JobCategory cateID;

    public CandidateCategory() {
    }

    public CandidateCategory(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Candidate getCandidateID() {
        return candidateID;
    }

    public void setCandidateID(Candidate candidateID) {
        this.candidateID = candidateID;
    }

    public JobCategory getCateID() {
        return cateID;
    }

    public void setCateID(JobCategory cateID) {
        this.cateID = cateID;
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
        if (!(object instanceof CandidateCategory)) {
            return false;
        }
        CandidateCategory other = (CandidateCategory) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.CandidateCategory[ id=" + id + " ]";
    }
    
}
