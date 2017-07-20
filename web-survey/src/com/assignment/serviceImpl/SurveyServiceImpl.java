package com.assignment.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignment.Dao.SurveyDao;
import com.assignment.model.Survey;
import com.assignment.service.SurveyService;

@Service
public class SurveyServiceImpl implements SurveyService {

	@Autowired
	private SurveyDao surveyDao;
	
	public long saveSurvey(Survey survey){
	
		if(surveyDao!=null) {
			return surveyDao.insertSurvey(survey);
		}
		else{
			return 0;
		}
			
	}
	
	public Survey surveyResult(long surveyId) {
		
		if(surveyDao!=null) {
			return surveyDao.getSurveyDtls(surveyId); 
		}
		else{
			return null;
		}
		
	}

}
