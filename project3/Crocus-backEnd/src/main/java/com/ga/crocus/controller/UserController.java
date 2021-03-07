package com.ga.crocus.controller;

import java.util.HashMap;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ga.crocus.config.JwtUtil;
import com.ga.crocus.dao.UserDao;
import com.ga.crocus.model.Comment;
import com.ga.crocus.model.JwtResponse;
import com.ga.crocus.model.Post;
import com.ga.crocus.model.User;


@RestController
public class UserController {
	
	@Autowired
	private Environment env;
	
	@Autowired
	private UserDao dao;
	
	@Autowired
	HttpServletRequest request;
	
	// Routes 
	
	// To load the registration form
//	   @GetMapping("/user/registration")
//	   public ModelAndView registration() {
//		   
//		   ModelAndView mv = new ModelAndView();
//		   mv.setViewName("user/registration");
//		   
//		   HomeController hc = new HomeController();
//		   hc.setAppName(mv, env);
//		   
//		   return mv;
//	   }
	
	// To post the registration form
	 @PostMapping("/user/registration")
	 public HashMap<String, String> registration(@RequestBody User user) {
//		 ModelAndView mv = new ModelAndView();
//		 mv.setViewName("home/index");
//		 
//		 HomeController hc = new HomeController();
//		 hc.setAppName(mv, env);
		 
		 HashMap<String, String> response = new HashMap<String, String>();
		 // Check to user is already registered or not
		 var it = dao.findAll();
		 for(User dbUser : it) {
			 if(dbUser.getEmailAddress().equals(user.getEmailAddress())) {
//				 mv.addObject("message", "User already exists");
//				 return mv;
				 
				 response.put("message", "User already exists");
				 return response;
			 }
		 }
		 
		 
		 // Password Encryption
		 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
		 String newPassword = bCrypt.encode(user.getPassword());
		 user.setPassword(newPassword);
		 
		 String newcon= bCrypt.encode(user.getConfirmPassword());
		 user.setConfirmPassword(newcon);
		 dao.save(user);
//		 mv.addObject("message", "User registered successfully");
//		 return mv;
		 response.put("message", "User registered successfully");
		 return response;
	 }
	 
	 @Autowired
	 AuthenticationManager authenticationManager;
	 @Autowired
	 JwtUtil jwtUtil;
	 @Autowired
	 UserDetailsService userDetailsService;
	 
	 @PostMapping("/user/authenticate")
	 public ResponseEntity<?> authenticate(@RequestBody User user) {
		 
		 try {
			 authenticationManager.authenticate(
					 new UsernamePasswordAuthenticationToken(user.getEmailAddress(), user.getPassword())
					 );
		 }
		 catch(BadCredentialsException e) {
			 String res = "Incorrect username or password";
			 return ResponseEntity.ok(res);
		 }
		 
		// Conitnue
		UserDetails userDetails = userDetailsService.loadUserByUsername(user.getEmailAddress());
		String jwtToken = jwtUtil.generateToken(userDetails);
		System.out.println(jwtToken);
		return ResponseEntity.ok(new JwtResponse(jwtToken));
	 }
	 
	
	// load userProfile
		@GetMapping("/user/userProfile")
		public User userProfile(@RequestParam String  emailAddress) {
			System.out.println(emailAddress);
			User user = dao.findByEmailAddress(emailAddress);
            return user;
			
		}
		
		 @PutMapping("/user/changePassword")
		 public HashMap<String, String> changePassword(@RequestBody User user) { //??
			 HashMap<String, String> change = new HashMap<String, String>();
				System.out.println("dbuser id "+user.getId());
			 // cheack
			 User dbuser = dao.findByEmailAddress(user.getEmailAddress());
			 System.out.println("dbuser id "+dbuser.getId());
				BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
				String oldPass = user.getOldPass();
//				System.out.println("old dbuser"+oldPass);
//				System.out.println("pass dbuser"+dbuser.getPassword());
//				System.out.println("getpass dbuser"+dbuser.getOldPassword());
				if (bCrypt.matches(oldPass, dbuser.getPassword())) { //matches
					System.out.println("insude if ");
					String newPassword = bCrypt.encode(user.getPassword());
					user.setPassword(newPassword);
					user.setOldPass(oldPass);
					String newConfi=bCrypt.encode(user.getConfirmPassword());
					user.setConfirmPassword(newConfi);
					dao.save(user);
					 change.put("message","you change the password successfully");
				}
				else {
					change.put("message","your  password doesn't match the old password");
				}
				return change; 
		 }
		
	// To load the login form
//		@GetMapping("/login")
//		public ModelAndView login() {
//			ModelAndView mv = new ModelAndView();
//			mv.setViewName("user/login");
//			
//			HomeController hc = new HomeController();
//			hc.setAppName(mv, env);
//			
//			return mv;
//		}
	
//	// To post the login form
//	 @PostMapping("/user/login")
//	 public String login(User user) {
//		 
//		 BCryptPasswordEncoder bCrypt = new BCryptPasswordEncoder();
//		 
//		 String emailAddress = user.getEmailAddress();
//		 String password = user.getPassword();
//		 
//		 User matchedUser = dao.findByEmailAddress(emailAddress);
//		 HttpSession session = request.getSession();
//
//		 if(matchedUser != null) {
//			 if(bCrypt.matches(password, matchedUser.getPassword())) {
//				 
//				 // Session
//				  session.setAttribute("user", matchedUser);
//				  session.setAttribute("userRole", matchedUser.getUserRole());
//				  
//				  session.setAttribute("message", "you are logged in successfully");
//				  
//				  return "redirect:/";
//				 
//			 }
//		 }
//		 
//		 session.setAttribute("message", "Username or password is incorrect");
//		 return "redirect:/user/login";
//	 }
//	
//	// To invalidate the current user session
//	 @GetMapping("/user/logout")
//	 public String logout() {
//		 HttpSession session = request.getSession();
//		 session.invalidate();
//		 
//		 return "redirect:/user/login";
//	 }
//	
//	// TO check the user is logged in or not
//	 public boolean isUserLoggedIn() {
//		 
//		 HttpSession session = request.getSession();
//		 if(session.getAttribute("user") == null) {
//			 return false;
//		 }
//		 else
//		 {
//			 return true;
//		 }
//	 }
//	 
//	
//	// Load user profile
//	// @GetMapping("/user/profile")

}


