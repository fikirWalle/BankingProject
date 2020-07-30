package edu.mum.repository;

import edu.mum.domain.Account;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends CrudRepository<Account,Long> {

     @Query("select a from Account a where a.accountNumber=:number")
    public Account findAccountByNumber(@Param("number")Integer number);



}
