package com.virtusa.myapp.teamg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.virtusa.myapp.teamg.model.User;


public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
