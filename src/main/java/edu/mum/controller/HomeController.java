package edu.mum.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.mum.domain.Account;
import edu.mum.domain.User;
import edu.mum.service.AccountService;
import edu.mum.service.UserService;


@Controller
public class HomeController {

	 @Autowired
    AccountService accountService;
	

	    @Autowired
	    UserService userService;

	
	@RequestMapping({"/approved"})
	public String welcome(HttpServletRequest req,Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {

		  String username = ((UserDetails)principal).getUsername();
		    System.out.print("********user name is "+ username);
               if (username.equals("admin")) {
            	  
            	   return "redirect:/account/list";
               }
		} 
		
		return "redirect:/user/accountSummary";
	}
	
	@RequestMapping(value = {"/", "/home","/account/home","/user/home","/account/edit/home"})
    public String getPage() {
 
   
        return "home";
 }
	
}
