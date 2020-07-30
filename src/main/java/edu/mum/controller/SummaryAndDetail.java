package edu.mum.controller;

import edu.mum.domain.Account;
import edu.mum.domain.Transaction;
import edu.mum.domain.User;
import edu.mum.domain.UserCredential;
import edu.mum.service.AccountService;
import edu.mum.service.TransactionService;
import edu.mum.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import java.util.List;

@Controller
@RequestMapping("/user")
public class SummaryAndDetail {

    @Autowired
    AccountService accountService;

    @Autowired
    TransactionService transactionService;

    @Autowired
    UserService userService;
    
    @ModelAttribute("accounts")
    public List<Account> getUserAccounts() {
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
   	 String username = ((UserDetails)principal).getUsername();
   	
   	User user =  userService.findByUserName(username);
      
       if (user != null) {

           List<Account> accounts = user.getAccountList();
        

           return accounts;
       }
       
       return null;
    	
    }

    @RequestMapping(value = "/adminPanel", method = RequestMethod.GET)
    public String getAccountDetail() {

       

        return "redirect:/account/list";

    }
    @RequestMapping(value = "/accountDetail", method = RequestMethod.GET)
    public String getAccountDetail(@RequestParam("accountNo") Integer accountNo, Model model) {

        Account account = accountService.findByAccNo(accountNo);

        List<Transaction> transactionList = account.getTransactionList();

        model.addAttribute("account", account);
        model.addAttribute("transactionList", transactionList);

        return "accountDetail1";

    }

    @RequestMapping(value = {"/accountSummary"},method = RequestMethod.GET)
    public String accounts(Model model) {
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    	 String username = ((UserDetails)principal).getUsername();
    	
    	User user =  userService.findByUserName(username);
       
        if (user != null) {

            List<Account> accounts = user.getAccountList();
            model.addAttribute("accounts", accounts);

            return "accountSummary";

        } else {

            UserCredential userCredential = (UserCredential) model.asMap().get("userCredential");

            User user1 = userService.findByUserName(userCredential.getUserName());
            List<Account> accounts = user1.getAccountList();
            model.addAttribute("accounts", accounts);


            return "accountSummary";
        }
    }


}
