package com.tuplestores.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuplestores.admin.dao.AuthenticationDao;
import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;
import com.tuplestores.admin.service.AuthenticationService;

@Service("authenticationService")
public class AuthenticationServiceImpl implements AuthenticationService {

	@Autowired  AuthenticationDao authenticationDao;
	
	
	public User SignIn(String email, String password) {
		
		return authenticationDao.SignIn(email, password);
	}


	public List<Driver> getdriverlist(String i_tenant_id) {
		
		return authenticationDao.getdriverlist(i_tenant_id);
	}

}
