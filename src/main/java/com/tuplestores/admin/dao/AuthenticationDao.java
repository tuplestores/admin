package com.tuplestores.admin.dao;

import java.util.List;

import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;

public interface AuthenticationDao {

	User SignIn(String email, String password); 
	
	List<Driver> getdriverlist(String i_tenant_id);
}
