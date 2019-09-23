<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"></jsp:include>
  <!-- Begin Page Content -->
        <div class="container-fluid">
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Driver</h1>
          </div>
  <form class="form-horizontal" action="/action_page.php">
 <!--    <div class="form-group">
      <label class="control-label col-sm-2" for="make">Make:</label>
      <div class="col-sm-10">
        <select class="form-control">
          <option>Select Make*</option>
          <option>Maruthi</option>
          <option>Reanult</option>
          <option>Benz</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="modal">Modal:</label>
      <div class="col-sm-10">
        <select class="form-control">
          <option>Select Model*</option>
          <option>800</option>
          <option>Alto</option>
          <option>Swift</option>
        </select>
      </div>
    </div> -->
    <div class="form-group">
      <label class="control-label col-sm-2" for="year">First Name:</label>
      <div class="col-sm-10">
        <input type="text" id ="txtFirstName" class="form-control" placeholder="First Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Last Name:</label>
      <div class="col-sm-10">
        <input type="text"  id ="txtLastName"  class="form-control" placeholder="Last Namer">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >ISD:</label>
      <div class="col-sm-10">
        <input type="text"  id ="txtISD"  class="form-control" placeholder="ISD">
      </div>
        <label class="control-label col-sm-2" for="number" >Mobile:</label>
      <div class="col-sm-10">
        <input type="number"  id="txtMobile" class="form-control" placeholder="Mobile Number">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Email</label>
      <div class="col-sm-10">
        <input type="text"  id ="txtEmail"   class="form-control" placeholder="Email">
      </div>
      </div>
      
      <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Verification Code</label>
      <div class="col-sm-10">
        <input type="text"  id="txtVerificationCode"  class="form-control" placeholder="Verification Code">
      </div>
      </div>  

    
<!--     <div class="form-group">
      <label class="control-label col-sm-2" for="number">Online/Offline</label>
      <div class="col-sm-10">
        <input type="checkbox" name="online" id="chkv1" onclick="onlyOne(this)"> Online  
        <input type="checkbox" name="online" id="chkv2" onclick="onlyOne(this)" > Offline   
      </div>
    </div>
    

    <div class="form-group">
      <label class="control-label col-sm-2" for="number">Status</label>
      <div class="col-sm-10">
        <input type="checkbox" name="status" id="chkva" onclick="onlyOne2(this)"> Active  
        <input type="checkbox" name="status" id="chkvi" onclick="onlyOne2(this)"> Inactive   
      </div>
    </div>-->
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="button" id="btnUpdate" class="form-control" onclick="updateDriver()">Update</button>
      </div>
    </div> 
   <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="button" id="btnCancel"  class="form-control">Cancel</button>
      </div>
    </div>
  </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
    <script>

$(document).ready( function () {
	
	
	
});


/* function onlyOne(checkbox) {
    var checkboxes = document.getElementsByName('online')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
    

}

function onlyOne2(checkbox) {
    var checkboxes = document.getElementsByName('status')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    }) */
    

 <script src="${pageContext.request.contextPath}/resources/js/pages/drivers.js"></script>  
 <script>
    
 $(document).ready( function () {
		
	 getDriverDetailsbyId();	
		
 });
    

</script>
      
   <jsp:include page="footer.jsp"></jsp:include>