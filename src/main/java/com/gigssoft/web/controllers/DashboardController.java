package com.gigssoft.web.controllers;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);

	@RequestMapping(value = { "/", "/dashboard" }, method = RequestMethod.GET)
	public ModelAndView DashboardPage(HttpServletRequest request) {
		logger.info("Requested URL=" + request.getRequestURL());

		ModelAndView model = new ModelAndView();
		model.addObject("content", "content/dashboard.jsp");
		model.addObject("isActive", "active");

		model.setViewName("index");
		return model;
	}

}
