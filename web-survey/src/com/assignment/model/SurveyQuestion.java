package com.assignment.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="survey_question")
public class SurveyQuestion {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	private Long questionId;
	
	@ManyToOne
	@JoinColumn(name="survey_id", nullable=false)
	private Survey survey;
	
	@Column(name="parent_question_id")
	private Long parentQuestionId;
	
	@Column(name="question")
	private String question;
	
	// TODO :: Use this column when we need to track who's doing survey based on their login Id/ User Id
	
	/*@Column(name="createdBy")
	private Long createdBy;
		
	@Column(name="createdDt")
	private Date createdDt;
	
	@Column(name="updtedBy")
	private Long updtedBy;
	
	@Column(name="uptdBy")
	private Date updtDt;*/

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	public Survey getSurvey() {
		return survey;
	}

	public void setSurvey(Survey survey) {
		this.survey = survey;
	}

	public Long getParentQuestionId() {
		return parentQuestionId;
	}

	public void setParentQuestionId(Long parentQuestionId) {
		this.parentQuestionId = parentQuestionId;
	}
 
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
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
	
}
