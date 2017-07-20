package com.assignment.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.springframework.context.annotation.Scope;

@Entity
@Table(name="question")
@Scope("session")
public class Question {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	@Column(name="question_id")
	private Long questionId;
	
	@Column(name="type")
	private Long type;
	
	@Column(name="question")
	private String question;
	
	@ManyToOne
	@JoinColumn(name="survey_id", nullable=false)
	private Survey survey;
	
	@OneToOne(mappedBy="question")
	@Cascade(value=org.hibernate.annotations.CascadeType.SAVE_UPDATE)
	private Answer answer;
	
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



	public Long getType() {
		return type;
	}



	public void setType(Long type) {
		this.type = type;
	}



	public String getQuestion() {
		return question;
	}



	public void setQuestion(String question) {
		this.question = question;
	}



	public Survey getSurvey() {
		return survey;
	}



	public void setSurvey(Survey survey) {
		this.survey = survey;
	}



	public Answer getAnswer() {
		return answer;
	}



	public void setAnswer(Answer answer) {
		this.answer = answer;
	}



//	public Long getCreatedBy() {
//		return createdBy;
//	}
//
//
//
//	public void setCreatedBy(Long createdBy) {
//		this.createdBy = createdBy;
//	}
//
//
//
//	public Date getCreatedDt() {
//		return createdDt;
//	}
//
//
//
//	public void setCreatedDt(Date createdDt) {
//		this.createdDt = createdDt;
//	}
//
//
//
//	public Long getUpdtedBy() {
//		return updtedBy;
//	}
//
//
//
//	public void setUpdtedBy(Long updtedBy) {
//		this.updtedBy = updtedBy;
//	}
//
//
//
//	public Date getUpdtDt() {
//		return updtDt;
//	}
//
//
//
//	public void setUpdtDt(Date updtDt) {
//		this.updtDt = updtDt;
//	}



//	@Override
//	public String toString(){
//		return "questionId = "+questionId+", type= "+type+", question= "+question+", survey=  "+survey+", answer = "+answer;
//	}
	
}
