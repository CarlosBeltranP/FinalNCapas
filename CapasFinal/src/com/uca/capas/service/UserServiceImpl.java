package com.uca.capas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.User;
import com.uca.capas.domain.User;
import com.uca.capas.repositories.UserRepository;
import com.uca.capas.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	
	@Autowired
	UserRepository userRepository;

	@Override
	public boolean inicio(String username, String password) {
		boolean response =  false;
		
		User user = userRepository.findOneByUsernameAndPassword(username, password);
		
		if(user != null) {
			response = true;
		}else {
			response = false; 
		}
		
		return response;
	}

}