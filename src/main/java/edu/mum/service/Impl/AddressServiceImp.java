package edu.mum.service.Impl;

import edu.mum.domain.Address;
import edu.mum.repository.AddressRepository;
import edu.mum.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AddressServiceImp implements AddressService {

        @Autowired
       AddressRepository addressRepository;
    @Override
    public Address save(Address account) {
        return addressRepository.save(account);
    }

    @Override
    public Address findOne(Long id) {
        return addressRepository.findOne(id);
    }

    @Override
    public List<Address> findAll() {
        return (List<Address>) addressRepository.findAll();
    }

    @Override
    public void delete(Long id) {
          addressRepository.delete(id);
    }
}
