package controllers;

import javax.sql.DataSource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dataTransferObjects.RegistrationForm;

@Controller
public class RegistrationController{
	
	@Autowired
	DataSource dataSource;
	
	
    @RequestMapping(value="/rejestracja", method=RequestMethod.GET)//Po podaniu "rejestracja" w URL
    public ModelAndView reqRejestracjaGET() {

        return new ModelAndView("rejestracja", "formularzRejestracji", new RegistrationForm());
    }

    @RequestMapping(value = "/rejestracja", method=RequestMethod.POST)
    public String reqRejestracjaPOST(@ModelAttribute("formularzRejestracji") @Valid RegistrationForm formularzRejestracji, BindingResult result, Model model) {
                 
        if(result.hasErrors())
        {
            model.addAttribute("message", "Przepraszamy, coœ posz³o nie tak. Prosimy spróbowaæ ponownie:");
            return "rejestracja";
        }
            
        else 
        {
            JdbcTemplate jt = new JdbcTemplate(dataSource);
            jt.execute("INSERT INTO konta (login, haslo, rola) VALUES ('" +  formularzRejestracji.getLogin() + "', '" + formularzRejestracji.getHaslo() + "', 'stud');");
            jt.execute("INSERT INTO studenci (PESEL, imiona, nazwisko, telefon, adres_email, adres_korespondencji, kod_pocztowy, login, plec) VALUES ('" +  formularzRejestracji.getPesel() + "', '" + formularzRejestracji.getImiona() + "', '" + formularzRejestracji.getNazwisko() + "', '" + formularzRejestracji.getTelefon() + "', '" + formularzRejestracji.getAdresEmail() + "', '" + formularzRejestracji.getAdresKorespondencji() + "', '" + formularzRejestracji.getKodPocztowy() + "', '" + formularzRejestracji.getLogin() + "', '" + formularzRejestracji.getPlec() + "');");
            return "redirect:/zarejestrowano";
        }
        
    }

}