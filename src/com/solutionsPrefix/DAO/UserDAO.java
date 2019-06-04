package com.solutionsPrefix.DAO;

import com.solutionsPrefix.entity.User;

public interface UserDAO {

	User findByUserName(String userName);
	
	void save(User user);
	
}
