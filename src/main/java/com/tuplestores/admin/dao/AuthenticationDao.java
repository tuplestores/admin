package com.tuplestores.admin.dao;

import java.util.List;

import com.tuplestores.admin.model.ApiResponse;
import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;

public interface AuthenticationDao {

	User SignIn(String email, String password); 
	
	List<Driver> getdriverlist(String i_tenant_id);
	
	ApiResponse addDriver(String tenant_id,
			 String email, String first_name, String last_name, String isd_code,
			 String mobile,String i_invite_code);
	
	
	Driver getDriver(String tenant_id,String i_driver_id);
	
	ApiResponse updateDriver(String tenant_id,
			String i_driver_id,
			 String email, String first_name, String last_name, String isd_code,
			 String mobile);
}
