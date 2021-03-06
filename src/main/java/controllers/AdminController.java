package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController{
	
	@Autowired
	DataSource dataSource;

	@RequestMapping("/admin/panel")
    public ModelAndView showUserPanel() {
		
		ModelAndView returnedView = new ModelAndView();      
		
		//JdbcTemplate jt = new JdbcTemplate(dataSource);
		//String oferty = jt.queryForObject("query", String.class);

		returnedView.setViewName("adminPanel");
		return returnedView;
    }


}