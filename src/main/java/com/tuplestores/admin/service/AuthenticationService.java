package com.tuplestores.admin.service;


import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;

public interface AuthenticationService {

	User SignIn(String email, String password); 
	 
	List<Driver> getdriverlist(String i_tenant_id);
	
}
