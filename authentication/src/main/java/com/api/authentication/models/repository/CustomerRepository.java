package com.api.authentication.models.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.commons.models.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
 

    
}
