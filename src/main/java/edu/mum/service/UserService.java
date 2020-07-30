package edu.mum.service;

import edu.mum.domain.Account;
import edu.mum.domain.User;

import java.util.List;

public interface UserService {

    public User save(User userCredential);
    public User findOne(Long id);
    public List<User> findAll();
    public void delete(Long id);
    public User findByUserName(String name);
  
	


}
