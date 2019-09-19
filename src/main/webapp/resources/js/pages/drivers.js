/**
 * Written by Ajish for Taxi Admin portal
 */




function fillDriverTable( tenantId){
	
	var json = {"i_tenant_id":tenantId};
	var status;
	
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
            	'<a href="#" class="btn btn-info btn-circle btn-sm">'+
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
	

