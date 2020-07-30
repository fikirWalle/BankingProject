package edu.mum.service;


import edu.mum.domain.Account;

import java.util.List;


public interface AccountService {

    public Account save(Account account);
    public Account findOne(Long id);
    public List<Account> findAll();
    public void delete(Long id);
    public void transfer(Integer accNo1,Integer accNo2,Integer amount);
    public Account findByAccNo(Integer accNo);
    public void withdraw(Integer accNo,Integer amount);
    public void deposit(Integer accNo,Integer amount);
    public void update (Account account);
    public void send(Integer accNo1,Integer accNo2,Integer amount);
    public void saveTestData(List<Account> accounts);
}
