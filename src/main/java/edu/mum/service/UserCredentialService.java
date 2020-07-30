package edu.mum.service;

import edu.mum.domain.UserCredential;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserCredentialService  {

    public UserCredential save(UserCredential userCredential);
    public UserCredential findOne(Long id);
    public List<UserCredential> findAll();
    public void delete(Long id);
}
