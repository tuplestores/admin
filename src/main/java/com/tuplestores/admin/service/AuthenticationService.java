package com.tuplestores.admin.service;


import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.tuplestores.admin.model.ApiResponse;
import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;

public interface AuthenticationService {

	User SignIn(String email, String password); 
	 
	List<Driver> getdriverlist(String i_tenant_id);
	
	ApiResponse addDriver(String tenant_id,
			 String email, String first_name, String last_name, String isd_code,
			 String mobile,String i_invite_code);
	
}
