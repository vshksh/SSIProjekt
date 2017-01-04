package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class LoginController
{

	@Autowired
	DataSource dataSource;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(
    		@RequestParam(value = "error", required = false) String error,
    		@RequestParam(value = "logout", required = false) String logout
    		)
	{
		ModelAndView model = new ModelAndView();

		if (error != null)
		{
			model.addObject("error", "Nieprawid³owa nazwa u¿ytkownika lub has³o!");
		}

		if (logout != null)
		{
			model.addObject("msg", "Wylogowano pomyœlnie.");
		}
		
		model.setViewName("login"); 
		
		//JdbcTemplate jt = new JdbcTemplate(dataSource);
		//String oferty = jt.queryForObject("query", String.class);

		return model;
    }
	
}
