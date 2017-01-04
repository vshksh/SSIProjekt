package controllers;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dataTransferObjects.OffersDTO;
import mappers.OffersMapper;

@Controller
public class OffersController{
	
	@Autowired
	DataSource dataSource;

	@RequestMapping("/oferty")
    public ModelAndView showUserPanel() {
		
		ModelAndView returnedView = new ModelAndView();      
		
		JdbcTemplate jt = new JdbcTemplate(dataSource);
		String SQL = "SELECT * FROM oferty";
		
		List<OffersDTO> listaOfert = jt.query(SQL, new OffersMapper());
		
		returnedView.addObject("listaOfert", listaOfert);
		
		returnedView.setViewName("oferty");
		return returnedView;
    }


}