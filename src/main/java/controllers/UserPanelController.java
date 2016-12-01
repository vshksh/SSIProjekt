package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserPanelController{
	
	@Autowired
	DataSource dataSource;

	@RequestMapping("/zalogowano")
    public ModelAndView showUserPanel() {
		
		ModelAndView returnedView = new ModelAndView();      

		returnedView.setViewName("zalogowano");
		return returnedView;
    }


}
