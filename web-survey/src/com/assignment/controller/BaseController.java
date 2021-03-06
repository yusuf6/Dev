package com.assignment.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.assignment.model.Answer;
import com.assignment.model.Question;
import com.assignment.model.Survey;
import com.assignment.service.SurveyService;

@Controller
public class BaseController {

	static final String HOME_PAGE="home";
	static final String RESULT_PAGE="result";
	static final String QUESTION_PAGE="question";
	
	private Set<Question> questions = new HashSet<Question>();
	
	@Autowired
	private Survey survey;
	
	@Autowired
	private SurveyService surveyService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		
		return HOME_PAGE;
	}
	
	@RequestMapping(value="/result",
			params = {"id"},	
			method = RequestMethod.GET)
	public String resultPage(@RequestParam("id") long surveyId, ModelMap model) {
		
		Survey surveyResult = surveyService.surveyResult(surveyId);
		
		model.addAttribute("survey", surveyResult);
		return RESULT_PAGE;
		
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveSurvey(ModelMap model) {
		
		long surveyId = surveyService.saveSurvey(survey);
		model.addAttribute("surveyId",surveyId);
		model.addAttribute("msg", "Survey has been added sucessfully.");
		return HOME_PAGE;
		
	}
	
	@RequestMapping(value="/addQuestion", 
			params = {"name", "dob", "phone", "address"},	
			method = RequestMethod.GET)
	public String getSurvey(
			@RequestParam(value = "name")String name,
			@RequestParam(value = "dob") @DateTimeFormat(pattern="dd-MM-yyyy") String dob,  
			@RequestParam(value = "phone")String  phone,
			@RequestParam(value = "address")String address,
			ModelMap model) throws ParseException   {
		

		survey.setName(name);
		survey.setAddress(address);
		survey.setDob(dob);
		survey.setPhone(Long.parseLong(phone));
	
		
		model.addAttribute("survey", survey);		
		return QUESTION_PAGE;
		
	}
	

	@RequestMapping(value="/saveQuestion", method = RequestMethod.POST) 
	public String saveQuestion(@ModelAttribute("question") Question question,
			@RequestParam(value="multiLineText") String multiLineText,
			@RequestParam(value="singleChoice") String singleChoice,
			@RequestParam(value="multiChoice", required=false) String multiChoice,
			ModelMap model) {
	
		Answer answer = new Answer();
		answer.setMultiChoiceAnswer(multiChoice);
		answer.setMultiLineAnswer(multiLineText);
		answer.setSingleChoiceAnswer(singleChoice);
		answer.setSurvey(survey);
		answer.setQuestion(question);
		
		question.setAnswer(answer);
		question.setSurvey(survey);
		questions.add(question);
		
		survey.setQuestion(questions);
		
		model.addAttribute("survey",survey);
		model.addAttribute("msg", "Question has been added sucessfully.");
		return HOME_PAGE;
		
	}
}

