package com.assignment.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name="survey")
public class Survey {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	@Column(name="survey_id")
	private Long surveyId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="dob")
	@Temporal(TemporalType.TIMESTAMP)
	Date dob;
	
	@Column(name="phone")
	private Long phone;
	
	@Column(name="address")
	private String address;
	
	// TODO :: Use this column when we need to track who's doing survey based on their login Id/ User Id
	
	/*@Column(name="createdBy")
	private Long createdBy;
		
	@Column(name="createdDt")
	private Date createdDt;
	
	@Column(name="updtedBy")
	private Long updtedBy;
	
	@Column(name="uptdBy")
	private Date updtDt;*/
	
	@OneToMany(mappedBy="survey")
	@Cascade(value=org.hibernate.annotations.CascadeType.SAVE_UPDATE)
	private Set<Question> question;
	
	
	public Long getSurveyId() {
		return surveyId;
	}


	public void setSurveyId(Long surveyId) {
		this.surveyId = surveyId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public Long getPhone() {
		return phone;
	}


	public void setPhone(Long phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	/*public Long getCreatedBy() {
		return createdBy;
	}


	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}


	public Date getCreatedDt() {
		return createdDt;
	}


	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}


	public Long getUpdtedBy() {
		return updtedBy;
	}


	public void setUpdtedBy(Long updtedBy) {
		this.updtedBy = updtedBy;
	}


	public Date getUpdtDt() {
		return updtDt;
	}


	public void setUpdtDt(Date updtDt) {
		this.updtDt = updtDt;
	}*/

	public Set<Question> getQuestion() {
		return question;
	}


	public void setQuestion(Set<Question> question) {
		this.question = question;
	}


//	@Override
//	public String toString(){
//		return "surveyId = "+surveyId+", name= "+name+", dob= "+dob+", phone=  "+phone+", address= "+address+"questions"+question;
//	}
	
}
