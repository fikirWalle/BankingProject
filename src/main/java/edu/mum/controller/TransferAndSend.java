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
public class TransferAndSend {


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

    @RequestMapping(value="/send",method = RequestMethod.GET)
    public String getSendForm(@ModelAttribute("transaction") Transaction transaction, Model model){
      

       

        return "send";

    }


    @RequestMapping(value="/send",method = RequestMethod.POST)
    public String saveSendForm(@ModelAttribute("transaction")Transaction transaction,Model model){

        // saving transaction
        transaction.setDateOfTransaction(LocalDate.now());
        transaction.setTransactionType(TransactionType.SENT);
        Transaction transaction1 = transactionService.save(transaction);


        //updating account1

        Account account = accountService.findByAccNo(transaction.getFromAccountNumber());
        account.addTransaction(transaction);
        accountService.save(account);

        // updating account2
        Account account2 = accountService.findByAccNo(transaction.getToAccountNumber());
        account.addTransaction(transaction);
        accountService.save(account2);
        // doing the transaction

        accountService.send(transaction1.getFromAccountNumber(), transaction1.getToAccountNumber(),transaction1.getAmount());
      

        return "redirect:/user/accountSummary";

    }

     @RequestMapping(value = "/transfer",method = RequestMethod.GET)
     public String getTransfer(@ModelAttribute("transaction") Transaction transaction, Model model){

               
          return "transfer";
     }

    @RequestMapping(value = "/transfer", method = RequestMethod.POST)
    public String transfer(@ModelAttribute("transaction") Transaction transaction, Model model) {
    	// setting transaction type
    	
    	  transaction.setTransactionType(TransactionType.TRANSFER);
        // updating first account
        Account account = accountService.findByAccNo(transaction.getFromAccountNumber());
        account.addTransaction(transaction);
        accountService.save(account);
        // updating second account
        Account account2 = accountService.findByAccNo(transaction.getToAccountNumber());
        account2.addTransaction(transaction);
        accountService.save(account2);

        Transaction transaction1 = transactionService.save(transaction);

        accountService.transfer(transaction1.getFromAccountNumber(), transaction1.getToAccountNumber(), transaction1.getAmount());

       
       

        return "redirect:/user/accountSummary";

    }


}
