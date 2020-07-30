package edu.mum.service.Impl;


import edu.mum.domain.Transaction;

import edu.mum.repository.TransactionRepository;
import edu.mum.service.TransactionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TransactionServiceImp implements TransactionService {

      @Autowired
      TransactionRepository transactionRepository;
    @Override
    public Transaction save(Transaction transaction) {
        return transactionRepository.save(transaction);
    }

    @Override
    public Transaction findOne(Long id) {
        return transactionRepository.findOne(id);
    }

    @Override
    public List<Transaction> findAll() {
        return (List<Transaction>) transactionRepository.findAll();
    }

    @Override
    public void delete(Long id) {
       transactionRepository.delete(id);
    }

    @Override
    public List<Transaction> findByAccNo(Integer number) {
        return transactionRepository.findTransactionByAccNo(number);
    }
}
