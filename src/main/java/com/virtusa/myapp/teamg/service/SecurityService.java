package com.virtusa.myapp.teamg.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
