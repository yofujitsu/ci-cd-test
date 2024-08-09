package com.yofujitsu.cicd.service;

import com.yofujitsu.cicd.entity.User;

import java.util.List;

public interface UserService {

    User getUser(Long id);

    void saveUser(User user);

    void deleteUser(Long id);

    List<User> getAllUsers();
}
