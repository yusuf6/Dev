package com.assignment.service;

import com.assignment.model.Survey;

public interface SurveyService {
	
	public long saveSurvey(Survey survey);

	public Survey surveyResult(long surveyId);
	
}
