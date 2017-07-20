package com.assignment.model;

import java.util.Date;

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

@Entity
@Table(name="answer")
public class Answer {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)	
	@Column(name="answer_id")	
	private Long answerId;
	
	@OneToOne	
	@JoinColumn(name="question_id", nullable=false)
	private Question question;
	
	@ManyToOne
	@JoinColumn(name="survey_id", nullable=false)
	private Survey survey;
	
	@Column(name="multiLine_answer")
	private String multiLineAnswer;
	
	@Column(name="multichoice_answer")
	private String multiChoiceAnswer;
	
	@Column(name="singlechoice_answer")
	private String singleChoiceAnswer;
	
	// TODO :: Use this column when we need to track who's doing survey based on their login Id/ User Id
	
	/*@Column(name="createdBy")
	private Long createdBy;
		
	@Column(name="createdDt")
	private Date createdDt;
	
	@Column(name="updtedBy")
	private Long updtedBy;
	
	@Column(name="uptdBy")
	private Date updtDt;*/

	public Long getAnswerId() {
		return answerId;
	}

	public void setAnswerId(Long answerId) {
		this.answerId = answerId;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Survey getSurvey() {
		return survey;
	}

	public void setSurvey(Survey survey) {
		this.survey = survey;
	}

	public String getMultiLineAnswer() {
		return multiLineAnswer;
	}

	public void setMultiLineAnswer(String multiLineAnswer) {
		this.multiLineAnswer = multiLineAnswer;
	}

	public String getMultiChoiceAnswer() {
		return multiChoiceAnswer;
	}

	public void setMultiChoiceAnswer(String multiChoiceAnswer) {
		this.multiChoiceAnswer = multiChoiceAnswer;
	}

	public String getSingleChoiceAnswer() {
		return singleChoiceAnswer;
	}

	public void setSingleChoiceAnswer(String singleChoiceAnswer) {
		this.singleChoiceAnswer = singleChoiceAnswer;
	}

//	public Long getCreatedBy() {
//		return createdBy;
//	}
//
//	public void setCreatedBy(Long createdBy) {
//		this.createdBy = createdBy;
//	}
//
//	public Date getCreatedDt() {
//		return createdDt;
//	}
//
//	public void setCreatedDt(Date createdDt) {
//		this.createdDt = createdDt;
//	}
//
//	public Long getUpdtedBy() {
//		return updtedBy;
//	}
//
//	public void setUpdtedBy(Long updtedBy) {
//		this.updtedBy = updtedBy;
//	}
//
//	public Date getUpdtDt() {
//		return updtDt;
//	}
//
//	public void setUpdtDt(Date updtDt) {
//		this.updtDt = updtDt;
//	}

	
}
