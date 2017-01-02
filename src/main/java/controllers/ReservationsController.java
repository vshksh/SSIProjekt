package controllers;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dataTransferObjects.ReservationsDTO;
import mappers.ReservationsMapper;

public class ReservationsController {

	@Autowired
	DataSource dataSource;

	@RequestMapping("/rezerwacje")
    public ModelAndView showUserPanel() {
		
		ModelAndView returnedView = new ModelAndView();
		
		JdbcTemplate jt = new JdbcTemplate(dataSource);
		String SQL = "SELECT * FROM rezerwacje";
		
		List<ReservationsDTO> rezerwacje = jt.query(SQL, new ReservationsMapper());
		
		//JdbcTemplate jt = new JdbcTemplate(dataSource);
		//String oferty = jt.queryForObject("query", String.class);

		returnedView.setViewName("rezerwacje");
		return returnedView;
    }
	
}
