/**
 * Written by Ajish for Taxi Admin portal
 */




function fillDriverTable( tenantId){
	
	var json = {"i_tenant_id":tenantId};
	var status;
	
	//   	'<a href="#" class="btn btn-info btn-circle btn-sm">'+
	$.ajax({
	    type : "GET",
	    url : "getdriverlist",
	    data : {
	        "i_tenant_id" : tenantId
	    },
	    success: function(data){
	    	
	    //var t=	$('#driverTable').DataTable();

	    var length = data.length;

    	var row='';
    	dtable.clear();
        for(var i = 0; i < length; i++) {
           
         if(data[i].driver_online=="Y"){
        	 status='<a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">Online</a>';
         }
         else{
        	status =  '<a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">Offline</a>';
         }
            
        	dtable.row.add( [
            	data[i].name,
            	data[i].mobile,
            	data[i].checked_in_vehicle,
            	status,
            	'<a href="adddriver.htm" class="btn btn-warning btn-circle btn-sm">'+
                '<i class="fas fa-edit"></i></a>'+  
            	'<a href="#" class="btn btn-info btn-circle btn-sm" onclick="showUpdateDriver(\''+data[i].driver_id+ '\')">'+
                '<i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger btn-circle btn-sm">'+
                '<i class="fas fa-trash"></i></a>'
            ] ).draw( false );

              
	      }
	    }
	});
	
}
	
	function addDriver(){
		
		var tenantId = $('#hid').val();
		alert(tenantId);
		var fname = $('#txtFirstName').val();
		var lname = $('#txtLastName').val();
		var email= $('#txtEmail').val();
		var isd = $('#txtISD').val();
		var mobile= $('#txtMobile').val();
		var invitecode = $('#txtVerificationCode').val();

		
		$.ajax({
		    type : "GET",
		    url : "addDrivers",
		    data : {
		        "i_tenant_id" : tenantId,
		        "i_email" : email,
		        "i_first_name" : fname,
		        "i_last_name" : lname,
		        "i_isd_code" : isd,
		        "i_mobile" : mobile,
		        "i_invite_code" : invitecode
		        
		    },
		    success: function(data){
		    	
		       if(data.status=="S"){
		    	   
		    	   window.location.href = "drivers.html"
		    	   
		       }
		    }

		});

		
	}
	

	
function updateDriver(){
		
		var tenantId = $('#hid').val();
		alert(tenantId);
		var fname = $('#txtFirstName').val();
		var lname = $('#txtLastName').val();
		var email= $('#txtEmail').val();
		var isd = $('#txtISD').val();
		var mobile= $('#txtMobile').val();
		var invitecode = $('#txtVerificationCode').val();

		
		$.ajax({
		    type : "GET",
		    url : "updateDriver",
		    data : {
		        "i_tenant_id" : tenantId,
		        "i_email" : email,
		        "i_first_name" : fname,
		        "i_last_name" : lname,
		        "i_isd_code" : isd,
		        "i_mobile" : mobile,
		        "i_invite_code" : invitecode
		        
		    },
		    success: function(data){
		    	
		       if(data.status=="S"){
		    	   
		    	   window.location.href = "drivers.html"
		    	   
		       }
		    }

		});

		
	}

function showUpdateDriver(driverId){
	
	alert(driverId);
	
	  $('#hiddriver').val(driverId);
	  window.location.href = "showUpdateDriver.html"
}

function getDriverDetailsbyId(){
	
	var driverid =  $('#hiddriver').val();
	var tenantId = $('#hid').val();
	
	$.ajax({
	    type : "GET",
	    url : "getDriverDetailsbyId",
	    data : {
	        "i_tenant_id" : tenantId,
	        "i_driver_id" : driverid
	        
	    },
	    success: function(data){
	    	
	    	$('#txtFirstName').val(data.first_name);
			$('#txtLastName').val(data.last_name);
			$('#txtEmail').val(data.email);
		    $('#txtISD').val(data.isd_code);
			$('#txtMobile').val(data.mobile);
			
	       
	    }

	});

	
}
	

	

