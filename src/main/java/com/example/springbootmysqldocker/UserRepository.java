package com.example.springbootmysqldocker;

import org.springframework.data.repository.CrudRepository;

import com.example.springbootmysqldocker.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}