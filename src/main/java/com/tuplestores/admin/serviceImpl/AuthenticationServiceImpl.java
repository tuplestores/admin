package com.tuplestores.admin.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tuplestores.admin.dao.AuthenticationDao;
import com.tuplestores.admin.model.ApiResponse;
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


	public ApiResponse addDriver(String tenant_id, String email, String first_name, String last_name, String isd_code,
			String mobile, String i_invite_code) {
		

		return authenticationDao.addDriver(tenant_id, email, first_name,
				last_name, isd_code, mobile, i_invite_code);
	}


	public Driver getDriver(String tenant_id, String i_driver_id) {
		
		return authenticationDao.getDriver(tenant_id, i_driver_id);
	}


	public ApiResponse updateDriver(String tenant_id, String i_driver_id, String email, String first_name,
			String last_name, String isd_code, String mobile) {
		

		 return authenticationDao.updateDriver(tenant_id, i_driver_id, email,
				 first_name, last_name, isd_code, mobile);
	}

}
