package edu.mum.domain;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name="transaction")
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDate dateOfTransaction;

    @Enumerated(EnumType.STRING)
    private TransactionType transactionType;


    private Integer fromAccountNumber;


    private Integer toAccountNumber;

    private Integer amount;

    public Transaction (){}

    public Transaction(LocalDate dateOfTransaction, TransactionType transactionType, Integer fromAccountNumber, Integer toAccountNumber, Integer amount) {
        this.dateOfTransaction = dateOfTransaction;
        this.transactionType = transactionType;
        this.fromAccountNumber = fromAccountNumber;
        this.toAccountNumber = toAccountNumber;
        this.amount = amount;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDateOfTransaction() {
        return dateOfTransaction;
    }

    public void setDateOfTransaction(LocalDate dateOfTransaction) {
        this.dateOfTransaction = dateOfTransaction;
    }

    public TransactionType getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(TransactionType transactionType) {
        this.transactionType = transactionType;
    }

    public Integer getFromAccountNumber() {
        return fromAccountNumber;
    }

    public void setFromAccountNumber(Integer fromAccountNumber) {
        this.fromAccountNumber = fromAccountNumber;
    }

    public Integer getToAccountNumber() {
        return toAccountNumber;
    }

    public void setToAccountNumber(Integer toAccountNumber) {
        this.toAccountNumber = toAccountNumber;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
