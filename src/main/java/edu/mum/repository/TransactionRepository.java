package edu.mum.repository;

import edu.mum.domain.Transaction;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction,Long> {

    @Query("select t from Transaction t where t.fromAccountNumber=:number or t.toAccountNumber=:number")
    public List<Transaction> findTransactionByAccNo(@Param("number")Integer number);




}
