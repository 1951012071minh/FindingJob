/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
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
@Table(name = "candidate")
@NamedQueries({
    @NamedQuery(name = "Candidate.findAll", query = "SELECT c FROM Candidate c"),
    @NamedQuery(name = "Candidate.findById", query = "SELECT c FROM Candidate c WHERE c.id = :id"),
    @NamedQuery(name = "Candidate.findByFullname", query = "SELECT c FROM Candidate c WHERE c.fullname = :fullname"),
    @NamedQuery(name = "Candidate.findByEmail", query = "SELECT c FROM Candidate c WHERE c.email = :email"),
    @NamedQuery(name = "Candidate.findByDateOfBirth", query = "SELECT c FROM Candidate c WHERE c.dateOfBirth = :dateOfBirth"),
    @NamedQuery(name = "Candidate.findByCity", query = "SELECT c FROM Candidate c WHERE c.city = :city"),
    @NamedQuery(name = "Candidate.findByAvatar", query = "SELECT c FROM Candidate c WHERE c.avatar = :avatar"),
    @NamedQuery(name = "Candidate.findByDescription", query = "SELECT c FROM Candidate c WHERE c.description = :description")})
public class Candidate implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Size(max = 100)
    @Column(name = "Full_name")
    private String fullname;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 45)
    @Column(name = "Email")
    private String email;
    @Column(name = "DateOfBirth")
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Size(max = 30)
    @Column(name = "City")
    private String city;
    @Size(max = 100)
    @Column(name = "Avatar")
    private String avatar;
    @Size(max = 300)
    @Column(name = "Description")
    private String description;
    @OneToMany(mappedBy = "candidateID")
    private Set<CandidateJob> candidateJobSet;
    @OneToMany(mappedBy = "candidateID")
    private Set<CurriculumVitae> curriculumVitaeSet;
    @OneToMany(mappedBy = "candidateID")
    private Set<CandidateCompany> candidateCompanySet;
    @JoinColumn(name = "User_ID", referencedColumnName = "ID")
    @ManyToOne
    private User userID;
    @OneToMany(mappedBy = "candidateID")
    private Set<CandidateMajor> candidateMajorSet;
    @OneToMany(mappedBy = "candidateID")
    private Set<CandidateCategory> candidateCategorySet;

    public Candidate() {
    }

    public Candidate(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<CandidateJob> getCandidateJobSet() {
        return candidateJobSet;
    }

    public void setCandidateJobSet(Set<CandidateJob> candidateJobSet) {
        this.candidateJobSet = candidateJobSet;
    }

    public Set<CurriculumVitae> getCurriculumVitaeSet() {
        return curriculumVitaeSet;
    }

    public void setCurriculumVitaeSet(Set<CurriculumVitae> curriculumVitaeSet) {
        this.curriculumVitaeSet = curriculumVitaeSet;
    }

    public Set<CandidateCompany> getCandidateCompanySet() {
        return candidateCompanySet;
    }

    public void setCandidateCompanySet(Set<CandidateCompany> candidateCompanySet) {
        this.candidateCompanySet = candidateCompanySet;
    }

    public User getUserID() {
        return userID;
    }

    public void setUserID(User userID) {
        this.userID = userID;
    }

    public Set<CandidateMajor> getCandidateMajorSet() {
        return candidateMajorSet;
    }

    public void setCandidateMajorSet(Set<CandidateMajor> candidateMajorSet) {
        this.candidateMajorSet = candidateMajorSet;
    }

    public Set<CandidateCategory> getCandidateCategorySet() {
        return candidateCategorySet;
    }

    public void setCandidateCategorySet(Set<CandidateCategory> candidateCategorySet) {
        this.candidateCategorySet = candidateCategorySet;
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
        if (!(object instanceof Candidate)) {
            return false;
        }
        Candidate other = (Candidate) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.Candidate[ id=" + id + " ]";
    }
    
}
