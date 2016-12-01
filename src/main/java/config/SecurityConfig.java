package config;
 
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * 
 * Konfiguracja Spring Security, czyli zarz¹dzania logowaniem i autoryzacj¹.
 * 
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    /*
	@Bean(name = "dataSource")
	public DriverManagerDataSource dataSource() {
	    DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
	    driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
	    driverManagerDataSource.setUrl("jdbc:mysql://localhost:3306/to");
	    driverManagerDataSource.setUsername("root");
	    driverManagerDataSource.setPassword("");
	    return driverManagerDataSource;
	}
    */
    
        //Tworzenie beana dataSource, ¿eby u¿yæ loginu i has³a z bazy
	@Autowired
	DataSource dataSource;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		
	  auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(  //  Pobranie uzytkownika
			"select login, haslo, aktywne from konta where login=?")
		.authoritiesByUsernameQuery(    //  I jego roli (uprawnien)
			"select login, rola from konta where login=?");
	}	
	
        //  Konfiguracja
	@Override
	protected void configure(HttpSecurity http) throws Exception {

	  http.authorizeRequests()
		.antMatchers("/admin/**").access("hasRole('ADMIN')")//  Do tego strony ma dostêp tylko admin
		.and()
		  .formLogin().failureUrl("/login?error")
                  .defaultSuccessUrl("/zalogowano")
		  .usernameParameter("login").passwordParameter("haslo")
		.and()
		  .logout().logoutSuccessUrl("/login?logout")
		.and()
		  .exceptionHandling().accessDeniedPage("/403")
		.and()
		  .csrf();
	}
}