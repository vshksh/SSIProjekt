package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController{
	
	@Autowired
	DataSource dataSource;

	@RequestMapping("/")
    public ModelAndView greeting() {
		
		ModelAndView returnedView = new ModelAndView();

		returnedView.setViewName("index");
		return returnedView;
    }


}
