package com.solutionsPrefix.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.solutionsPrefix.entity.User;
import com.solutionsPrefix.solutionUser.PrefixUser;

public interface UserService extends UserDetailsService {

	User findByUserName(String userName);
	
	void save(PrefixUser prefixUser);
	
}
