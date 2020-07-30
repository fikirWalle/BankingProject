package edu.mum.controller;

import edu.mum.domain.Account;
import edu.mum.domain.Transaction;
import edu.mum.domain.TransactionType;
import edu.mum.domain.User;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/user")
public class DepositAndWithdraw {


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

    @RequestMapping(value = "/withdraw", method = RequestMethod.GET)
    public String saveWithdraw(@ModelAttribute("transaction") Transaction transaction, Model model) {
       
        return "withdraw";

    }

    @RequestMapping(value = "/withdraw", method = RequestMethod.POST)
    public String getWithdraw(@ModelAttribute("transaction") Transaction transaction) {

        transaction.setDateOfTransaction(LocalDate.now());
        transaction.setTransactionType(TransactionType.WITHDRAW);
        Transaction transaction1 = transactionService.save(transaction);
        
        // updating  account
        Account account = accountService.findByAccNo(transaction.getFromAccountNumber());
        account.addTransaction(transaction);
        accountService.save(account);
        accountService.withdraw(transaction.getFromAccountNumber(), transaction1.getAmount());
       
       

        return "redirect:/user/accountSummary";

    }

    @RequestMapping(value = "/deposit", method = RequestMethod.GET)
    public String getDeposit(@ModelAttribute("transaction") Transaction transaction, Model model) {
      

        return "deposit";

    }

    @RequestMapping(value = "/deposit", method = RequestMethod.POST)
    public String saveDeposit(@ModelAttribute("transaction") Transaction transaction) {
        // saving transaction
        transaction.setDateOfTransaction(LocalDate.now());
        transaction.setTransactionType(TransactionType.DEPOSIT);
        Transaction transaction1 = transactionService.save(transaction);

        //updating account

        Account account = accountService.findByAccNo(transaction.getToAccountNumber());
        account.addTransaction(transaction);
        accountService.save(account);
        // doing the transaction
        accountService.deposit(transaction.getToAccountNumber(), transaction1.getAmount());


        return "redirect:/user/accountSummary";

    }

}
