package edu.mum.service;


import edu.mum.domain.Transaction;

import java.util.List;

public interface TransactionService {

    public Transaction save(Transaction transaction);
    public Transaction findOne(Long id);
    public List<Transaction> findAll();
    public void delete(Long id);
    public List<Transaction> findByAccNo(Integer number);
}


