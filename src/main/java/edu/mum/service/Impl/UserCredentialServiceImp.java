package edu.mum.service.Impl;

import edu.mum.domain.UserCredential;
import edu.mum.repository.UserCredentialsRepository;
import edu.mum.service.UserCredentialService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserCredentialServiceImp implements UserCredentialService {
        @Autowired
       UserCredentialsRepository userCredentialsRepository;
    @Override
    public UserCredential save(UserCredential userCredential) {
        return userCredentialsRepository.save(userCredential);
    }

    @Override
    public UserCredential findOne(Long id) {
        return userCredentialsRepository.findOne(id);
    }

    @Override
    public List<UserCredential> findAll() {
        return (List<UserCredential>) userCredentialsRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        userCredentialsRepository.delete(id);
    }
}
