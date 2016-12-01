package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController{
	
	@Autowired
	DataSource dataSource;

	@RequestMapping("/")
    public ModelAndView greeting() {
		
		ModelAndView returnedView = new ModelAndView();      
		
		//JdbcTemplate jt = new JdbcTemplate(dataSource);
		//String oferty = jt.queryForObject("query", String.class);
		
		returnedView.addObject("message", "hello");

		returnedView.setViewName("index");
		return returnedView;
    }


}
