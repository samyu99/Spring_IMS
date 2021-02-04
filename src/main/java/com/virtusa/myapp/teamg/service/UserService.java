package com.virtusa.myapp.teamg.service;

import com.virtusa.myapp.teamg.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
