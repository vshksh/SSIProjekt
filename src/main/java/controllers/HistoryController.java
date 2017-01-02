package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HistoryController
{

	@Autowired
	DataSource dataSource;

	@RequestMapping("/historia")
    public ModelAndView showUserPanel()
	{
		
		ModelAndView returnedView = new ModelAndView();      
		
		//JdbcTemplate jt = new JdbcTemplate(dataSource);
		//String oferty = jt.queryForObject("query", String.class);

		returnedView.setViewName("historia");
		return returnedView;
    }
	
}
