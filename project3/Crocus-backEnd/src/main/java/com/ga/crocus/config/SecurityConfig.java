package com.ga.crocus.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
			
	@Autowired
	UserDetailsService userDetailsService;
			
    @Autowired
	JwtRequestFilter jwtRequestFilter;

			
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
			
 // Authentication
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//this.disableLocalConfigureAuthenticationBldr = true;
		auth.userDetailsService(userDetailsService);
		}
			
			
	// Authorization
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	 http
	.csrf().disable()
	.authorizeRequests()
	.antMatchers("/post/add", "/comment/add").hasAnyRole("ADMIN","USER")
	.antMatchers("/post/edit", "/comment/edit").hasAnyRole("ADMIN","USER")
	.antMatchers("/post/delete", "/comment/delete").hasRole("ADMIN")
					
//	.and()
//	.formLogin().loginPage("/login")
//					
//	.and()
//	.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//	.logoutSuccessUrl("/").deleteCookies("JSESSIONID").invalidateHttpSession(true);
		//	

	.and()
	.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
			
	http.addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);

			
	}
			
	@Override
    @Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

		

	}