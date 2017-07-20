package com.assignment.DaoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.assignment.Dao.SurveyDao;
import com.assignment.model.Survey;

@Repository
public class SurveyDaoImpl implements SurveyDao {

	 @Autowired
	 private SessionFactory sessionFactory;
	 
	public long insertSurvey(Survey survey) {
		
		Session session = sessionFactory.getCurrentSession();
		Transaction transaction = session.beginTransaction();
		long id = (long)sessionFactory.getCurrentSession().save(survey);
		transaction.commit();
		return id;
	}
	
	public Survey getSurveyDtls(long surveyId) {
		
		Survey survey = null;
		
		Session session = sessionFactory.getCurrentSession();
		
		Transaction transaction = session.beginTransaction();
		
		Query query = session.createSQLQuery("select survey.*, question.question_id,question.type, question.question, answer.answer_id, answer.multichoice_answer, answer.multiline_answer, answer.singlechoice_answer from Survey as survey "
				+ " inner join Question as question on question.survey_id = survey.survey_id "
				+ " inner join Answer as answer on answer.question_id = question.question_id and answer.survey_id = question.survey_id "
				+ " where survey.survey_id = "+surveyId).addEntity("survey", Survey.class).addJoin("question", "survey.question").addJoin("answer", "question.answer");

		List surveyList = query.list();
		System.out.println("size "+surveyList.size());
		
		if(surveyList!=null && surveyList.size() > 0 ) {
			
			//survey = (Survey)surveyList.get(0);
		}
		return survey;
		
	}
}
