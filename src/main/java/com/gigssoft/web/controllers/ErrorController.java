package com.gigssoft.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ErrorController {

	private static final Logger logger = LoggerFactory.getLogger(ErrorController.class);

	@RequestMapping(value = "/404")
	public ModelAndView Error404Page(HttpServletRequest request, Exception ex) {
		logger.info("Requested URL=" + request.getRequestURL());
		logger.error("Exception Raised=" + ex);

		ModelAndView model = new ModelAndView();

		model.setViewName("error/404");
		return model;
	}

	@RequestMapping(value = "/500")
	public ModelAndView Error500Page(HttpServletRequest request, Exception ex) {
		logger.info("Requested URL=" + request.getRequestURL());
		logger.error("Exception Raised=" + ex);

		ModelAndView model = new ModelAndView();

		model.setViewName("error/500");
		return model;
	}

}
