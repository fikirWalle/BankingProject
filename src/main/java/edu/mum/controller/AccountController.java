package edu.mum.controller;

import edu.mum.domain.Account;
import edu.mum.domain.User;
import edu.mum.service.AccountService;
import edu.mum.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
    @Autowired
    private AccountService accountService;
    

   
    @Autowired
    private UserService userService;
    @RequestMapping(value="/add")
    public String addAccount(@ModelAttribute("newAccount") Account account,Model model){
        Map<String,String> genderMap= new HashMap<>();
        genderMap.put("male","male");
        genderMap.put("female","female");
        model.addAttribute("genders",genderMap);
        return "createAccount";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAccount(@Valid @ModelAttribute("newAccount") Account account, BindingResult bindingResult,
                              RedirectAttributes redirectAttributes){
     if (bindingResult.hasErrors()){
         return "createAccount";
     }
        redirectAttributes.addFlashAttribute("savedAccount",account);
        accountService.save(account);
        return "redirect:/account/userDetails";
    }

    @RequestMapping(value= {"/list","/edit/list"})
    public String listAccounts(Model model){
        model.addAttribute("accounts",accountService.findAll());
        return "accountList";
    }
    @RequestMapping(value="/delete/{id}")
    public String deleteAccount(@PathVariable Long id) {
        // getting the user
        Account account = accountService.findOne(id);
    	 User user = account.getUser();
  	     user.remove(account);
    	 userService.save(user);
    	 
    	// userService.deleteAcc(user, account);
    	 
    	 

    	 return "redirect:/account/list";
    }
    @RequestMapping(value = "/edit/{id}")
    public String retrieveStudentTOBeUpdated(@PathVariable long id, Model model) {
        Account account = accountService.findOne(id);
        if (account != null) {
            model.addAttribute("newAccount", account);
            return "updateAccount";
        }
        return "accountList";
    }
    @RequestMapping(value = "/edit/update", method = RequestMethod.POST)
    public String updateAccount(@Valid@ModelAttribute("newAccount") Account account, BindingResult bindingResult,
                                RedirectAttributes redirectAttributes){
        if (bindingResult.hasErrors()) {
            return "updateAccount";
        }
        redirectAttributes.addFlashAttribute("savedAccount",account);
        accountService.save(account);
        return "redirect:/account/userDetails";
    }

    @RequestMapping(value="/userDetails", method=RequestMethod.GET)
    public String accountDetails(){
       

        return "userDetail";
    }
    
    @RequestMapping(value="/user/accountSummary", method=RequestMethod.GET)
    public String goMyAccount(){
       

        return "redirect:/user/accountSummary";
    }


}
