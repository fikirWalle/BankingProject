package edu.mum.service.Impl;

import edu.mum.domain.Account;
import edu.mum.domain.User;
import edu.mum.repository.UserRepository;
import edu.mum.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImp implements UserService {

      @Autowired
      UserRepository  userRepository;

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public User findOne(Long id) {
        return userRepository.findOne(id);
    }

    @Override
    public List<User> findAll() {
        return (List<User>) userRepository.findAll();
    }

    @Override
    public void delete(Long id) {
       userRepository.delete(id);
    }

    @Override
    public User findByUserName(String name) {
        return userRepository.findUserByUserName(name);
    }

	
    

}
