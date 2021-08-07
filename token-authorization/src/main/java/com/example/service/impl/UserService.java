package com.example.service.impl;

import com.example.entity.User;

public interface UserService {
    User selectByUsername(String username);
}
