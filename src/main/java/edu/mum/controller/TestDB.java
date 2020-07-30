package edu.mum.controller;
//

import edu.mum.domain.*;
import edu.mum.domain.Account;
import edu.mum.service.AccountService;

import edu.mum.service.TransactionService;
import edu.mum.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class TestDB {


    @Autowired
    AccountService accountService;

    @Autowired
    TransactionService transactionService;

    @Autowired
    UserService userService;

//
//










    @RequestMapping(value = "/welcome")
    public String testAccount(@ModelAttribute("transaction") Transaction transaction, Model model) {

    	
    	   
          
        User user = new User();

        user.setFirstName("admin");
        user.setDateOfBirth(LocalDate.of(1987, 9, 1));
        user.setLastName("Bisr");
        user.setGender("F");


     
        // account 1
        Account account1 = new Account();

        account1.setAccountNumber(1234);
        account1.setAccountType(AccountType.CHECKING);
        account1.setUser(user);
        account1.setBalance(500);
      
        
     // account 2
        Account account2 = new Account();

        account2.setAccountNumber(1235);
        account2.setAccountType(AccountType.SAVING);
        account2.setUser(user);
        account2.setBalance(5000);
       

        user.addAccount(account2);

        
        // account 3
           Account account3 = new Account();

           account3.setAccountNumber(1236);
           account3.setAccountType(AccountType.CREDIT);
           account3.setUser(user);
           account3.setBalance(6000);
          

           user.addAccount(account3);
        
      
       // user 2
     
        User user2 = new User();

        user2.setFirstName("guest");
        user2.setDateOfBirth(LocalDate.of(1987, 9, 1));
        user2.setLastName("fikir");
        user2.setGender("M");
        
        // account 4
        Account account4 = new Account();

        account4.setAccountNumber(1237);
        account4.setAccountType(AccountType.SAVING);
        account4.setUser(user2);
        account4.setBalance(5000);
       

        user2.addAccount(account4);

        // account 5
        Account account5 = new Account();

        account5.setAccountNumber(1238);
        account5.setAccountType(AccountType.CHECKING);
        account5.setUser(user2);
        account5.setBalance(5000);

      
        user2.addAccount(account5);
        
        
        // Account 6
        
       
        Account account6 = new Account();

        account6.setAccountNumber(1239);
        account6.setAccountType(AccountType.CREDIT);
        account6.setUser(user2);
        account6.setBalance(5000);

      
        user2.addAccount(account6);
        
        
        // adding accounts
        
        List<Account> accounts = Arrays.asList(account1,account2,account3,account4,account5,account6);
        
        
          accountService.saveTestData(accounts);



        return "forward:/approved";
    }

    @RequestMapping(value = "/save2")
    public String saveAccount2(@ModelAttribute("transaction") Transaction transaction, Model model) {
        // account 2
//        List<Transaction> transactionList = new ArrayList<>();
//        User user = new User();
//
//        user.setFirstName("Tek");
//        user.setDateOfBirth(LocalDate.of(1987, 9, 1));
//        user.setLastName("rob");
//
//        Account account2 = new Account();
//
//        account2.setAccountNumber(5234);
//        account2.setAccountType(AccountType.SAVING);
//        account2.setUser(user);
//        account2.setBalance(300);
//        account2.setTransactionList(transactionList);
//
//         user.addAccount(account2);
//        Account account3 = accountService.save(account2);
//
//        model.addAttribute("account2", account3);
//
//
//        List<Account> accounts = accountService.findAll();
//
//        model.addAttribute("accounts", accounts);
//
//        // adding Credentials and Authority
//
//         Authority authority = new Authority("guest","ROLE_USER");
//         UserCredential userCredential = new UserCredential("guest","$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe");
//                      userCredential.addAuthority(authority);
//       //  accountService.save(account3.)


        return "home";

    }
//
//    @RequestMapping(value = "/list")
//    public String getList(Model model) {
//        List<Account> accounts = accountService.findAll();
//
//        model.addAttribute("accounts", accounts);
//
//        return "index";
//    }
//
//    @RequestMapping(value = {"/", "/home"})
//    public String getPage(@ModelAttribute("transaction") Transaction transaction,Model model) {
//
//        List<Account> accounts = accountService.findAll();
//
//        model.addAttribute("accounts", accounts);
//        return "home";
//    }
}
