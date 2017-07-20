package com.assignment.Dao;

import com.assignment.model.Survey;

public interface SurveyDao {

	public long insertSurvey(Survey Survey);
	
	public Survey getSurveyDtls(long surveyId);
}
