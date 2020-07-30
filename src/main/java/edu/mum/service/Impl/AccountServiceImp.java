package edu.mum.service.Impl;

import edu.mum.domain.Account;
import edu.mum.repository.AccountRepository;
import edu.mum.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.validation.constraints.Null;
import java.util.List;

@Service
@Transactional
public class AccountServiceImp implements AccountService {

         @Autowired
        AccountRepository accountRepository;

    @Override
    public Account save(Account account) {
        return accountRepository.save(account);
    }

    @Override
    public Account findOne(Long id) {
        return accountRepository.findOne(id);
    }

    @Override
    public List<Account> findAll() {
        return (List<Account>) accountRepository.findAll();
    }

    @Override
    public void delete(Long id) {
         accountRepository.delete(id);
    }

     @Override
    public void transfer(Integer accNo1,Integer accNo2,Integer amount){

           Account account1 = findByAccNo(accNo1);

          account1.setBalance(account1.getBalance()-amount);
             save(account1);

        Account account2 = findByAccNo(accNo2);
        account2.setBalance(account2.getBalance()+amount);
        save(account2);

    }

    @Override
    public void withdraw(Integer accNo1, Integer amount) {
        Account account1 = findByAccNo(accNo1);
        account1.setBalance(account1.getBalance()-amount);
        save(account1);
    }

    @Override
    public void deposit(Integer accNo, Integer amount) {
        Account account1 = findByAccNo(accNo);
        account1.setBalance(account1.getBalance()+amount);
        save(account1);
    }

    @Override
    public void update(Account account) {
        accountRepository.findOne(account.getId());


    }

    @Override
    public void send(Integer accNo1, Integer accNo2, Integer amount) {


        Account account2 = findByAccNo(accNo2);


       if(account2 != null) {
           Account account1 = findByAccNo(accNo1);

           account1.setBalance(account1.getBalance() - amount);
           save(account1);


           account2.setBalance(account2.getBalance() + amount);


           save(account2);

       }
    }

    @Override
    public Account findByAccNo(Integer accNo) {
        return accountRepository.findAccountByNumber(accNo);
    }

    @Override
    public void saveTestData(List<Account> accounts) {
        List<Account> accounts1 = (List<Account>) accountRepository.findAll();
          if (accounts1.size() != 6) {
            accountRepository.deleteAll();
            accountRepository.save(accounts); 

    }
         
}
    
}
