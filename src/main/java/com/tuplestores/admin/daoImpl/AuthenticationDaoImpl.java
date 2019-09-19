package com.tuplestores.admin.daoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tuplestores.admin.dao.AuthenticationDao;
import com.tuplestores.admin.dao.DispatchDBConnection;
import com.tuplestores.admin.model.ApiResponse;
import com.tuplestores.admin.model.Driver;
import com.tuplestores.admin.model.User;


@Repository("authenticationDao")
public class AuthenticationDaoImpl implements AuthenticationDao{

	@Autowired
	DispatchDBConnection dispatchDBConnection;
	
	public User SignIn(String email, String password) {
		
		User user=null;
		CallableStatement callableStatement = null;
		Connection con =null;
		ResultSet rs=null;
		try {
			//ap_list_admin_users_p
			con = dispatchDBConnection.getJdbcTemplate().getDataSource().getConnection();
			callableStatement = con.prepareCall("{call ap_sign_in_p(?,?)}");
			
			//callableStatement = con.prepareCall("{call ap_list_admin_users_p(?)}");
			
			callableStatement.setString(1,email);
			callableStatement.setString(2,password);
		//	callableStatement.setString(3,"");
			rs=callableStatement.executeQuery();
			
			if(rs.next()){

				user = new User();
				user.setUserId(rs.getString("user_id"));
				user.setEmail(rs.getString("email"));
				//user.setPassword(rs.getString("password"));
				user.setFirstName(rs.getString("first_name"));
				user.setLastName(rs.getString("last_name"));
				user.setIsdCode(rs.getString("isd_code"));
				user.setMobile(rs.getString("mobile"));
				user.setTenant_id(rs.getString("tenant_id"));
				user.setTenant_name(rs.getString("tenant_name"));
		 }
			
		} catch (Exception ex) {
			user=null;
			ex.printStackTrace();
		} finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(con!=null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return user;
		

		
	}

	public List<Driver> getdriverlist(String i_tenant_id) {
		
		
		Driver driver = null;
		java.sql.CallableStatement callableStatement = null;
		Connection con = null;
		ResultSet rs = null;
		List<Driver> lstDriver=null;
		
		try {
			con = dispatchDBConnection.getJdbcTemplate().getDataSource().getConnection();
			
			//callableStatement = con.prepareCall("{call ap_sign_in_p(?,?)}");
			int len = i_tenant_id.length();
			
			callableStatement = con.prepareCall("{call ap_list_drivers_p(?)}");
			
			
			callableStatement.setString(1,i_tenant_id);
			rs=callableStatement.executeQuery();
			lstDriver = new ArrayList<Driver>();
			
			while(rs.next()) {
				

				
				driver =new Driver();
				driver.setDriver_id(rs.getString("driver_id"));
				driver.setChecked_in_vehicle(rs.getString("checked_in_vehicle"));
				driver.setName(rs.getString("name"));
				driver.setDriver_online(rs.getString("driver_online"));
				driver.setMobile(rs.getString("mobile"));
				driver.setVerified(rs.getString("verified"));
				
				lstDriver.add(driver);
				
			}
			
		}catch(Exception e) {
			lstDriver = null;
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(callableStatement!=null) {
				try {
					callableStatement.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null)
				try {
					con.close();
					}catch (SQLException ex) {
						ex.printStackTrace();
					}
			
		}
		
			return lstDriver;
		
		
	}

	public ApiResponse addDriver(String tenant_id, String email, 
								String first_name, String last_name, String isd_code,
									String mobile, String i_invite_code) {
		
		
			java.sql.CallableStatement callableStatement = null;
			Connection con = null;
			ApiResponse api = null;
			String out = "E";
			try {
				api= new ApiResponse();
				con = dispatchDBConnection.getJdbcTemplate().getDataSource().getConnection();
				callableStatement = con.prepareCall("{call ap_create_driver_p(?,?,?,?,?,?,?,?)}");
				callableStatement.setString(1, tenant_id);
				callableStatement.setString(2, email);
				callableStatement.setString(3, first_name);
				callableStatement.setString(4,last_name);
				callableStatement.setString(5, isd_code);
				callableStatement.setString(6, mobile);
				callableStatement.setString(7, i_invite_code);
				callableStatement.registerOutParameter(8, java.sql.Types.CHAR);
				callableStatement.executeUpdate();
				out = callableStatement.getString(8);
				api.setStatus(out);
				api.setMsg("Message");

			}catch(Exception e) {
				api.setStatus("E");

				e.printStackTrace();
			}finally {

				if(callableStatement!=null) {
					try {
						callableStatement.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}

				if(con!=null)
					try {
						con.close();
					}catch(SQLException ex) {
						ex.printStackTrace();
					}
			}

			return api;






		}

}
