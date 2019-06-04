package com.solutionsPrefix.service;

import java.util.Arrays;
import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.solutionsPrefix.DAO.RoleDAO;
import com.solutionsPrefix.DAO.UserDAO;
import com.solutionsPrefix.entity.Role;
import com.solutionsPrefix.entity.User;
import com.solutionsPrefix.solutionUser.PrefixUser;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userDAO.findByUserName(username);
		if (user == null) {
			throw new UsernameNotFoundException("Invalid username or password.");
		}
		return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
				mapRolesToAuthorities(user.getRoles()));
	}

	private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
	}

	@Override
	@Transactional
	public User findByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDAO.findByUserName(userName);
	}

	@Override
	@Transactional
	public void save(PrefixUser prefixUser) {
		User user = new User();
		// assign user details to the user object
		user.setUserName(prefixUser.getUserName());
		user.setPassword(passwordEncoder.encode(prefixUser.getPassword()));
		user.setFirstName(prefixUser.getFirstName());
		user.setLastName(prefixUser.getLastName());
		user.setEmail(prefixUser.getEmail());

		// give user default role of "employee"
		user.setRoles(Arrays.asList(roleDAO.findRoleByName("ROLE_CLIENT")));

		// save user in the database
		userDAO.save(user);
	}
}
