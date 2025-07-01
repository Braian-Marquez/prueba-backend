package com.api.authentication.models.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.api.commons.models.entity.Role;


public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);
}
