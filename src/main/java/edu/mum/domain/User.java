package edu.mum.domain;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="users")
public class User {

     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
     @NotEmpty
     @Size(min =4,max=15, message = "{Size.name.validation}")
     private String firstName;
    @NotEmpty@Size(min =4,max=15, message = "{Size.name.validation}")
     private String lastName;
   // @NotEmpty
    private String gender;
    @NotNull
    @DateTimeFormat(pattern = "MM-dd-yyyy")
    private LocalDate dateOfBirth;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @Valid
    private Address address;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name="username")
    private UserCredential userCredential;

    @OneToMany(mappedBy = "user",orphanRemoval=true,fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Account> accountList = new ArrayList<>();

   public User(){}

    public User(String firstName, String lastName, String gender, LocalDate dateOfBirth, Address address, UserCredential userCredential, List<Account> accountList) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.userCredential = userCredential;
        this.accountList = accountList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public UserCredential getUserCredential() {
        return userCredential;
    }

    public void setUserCredential(UserCredential userCredential) {
        this.userCredential = userCredential;
    }

    public List<Account> getAccountList() {
        return accountList;
    }

    public void setAccountList(List<Account> accountList) {
        this.accountList = accountList;
    }


    public void addAccount(Account account) {

        accountList.add(account);
    }

	public void remove(Account account) {
		Account accountToRemove= null;
		for(Account acc:accountList) {
			if(account.getAccountNumber()==acc.getAccountNumber()) {
				 accountToRemove = acc;
				
			}
		}
		
		accountList.remove(accountToRemove);
		
	}
}
