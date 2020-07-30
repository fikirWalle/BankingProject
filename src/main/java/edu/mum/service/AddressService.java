package edu.mum.service;

import edu.mum.domain.Address;

import java.util.List;

public interface AddressService {


    public Address save(Address account);
    public Address findOne(Long id);
    public List<Address> findAll();
    public void delete(Long id);
}
