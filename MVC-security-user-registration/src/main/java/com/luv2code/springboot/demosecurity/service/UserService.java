package com.luv2code.springboot.demosecurity.service;

import com.luv2code.springboot.demosecurity.entity.User;
import com.luv2code.springboot.demosecurity.user.WebUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

	public User findByUserName(String userName);

	void save(WebUser webUser);

}
