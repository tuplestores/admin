<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"></jsp:include>
  <!-- Begin Page Content -->
        <div class="container-fluid">
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Vehicles</h1>
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
        <input type="number" class="form-control" placeholder="First Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Last Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Last Namer">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Mobile:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Mobile Number">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Email</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Email">
      </div>
      </div>
      
      <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Vehicle</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Vehicle">
      </div>
      </div>  

    
    <div class="form-group">
      <label class="control-label col-sm-2" for="number">Online/Offline</label>
      <div class="col-sm-10">
        <input type="checkbox" name="vehicle1" value="Bike"> Online  
        <input type="checkbox" name="vehicle2" value="Car"> Offline   
      </div>
    </div>
    

    <div class="form-group">
      <label class="control-label col-sm-2" for="number">Status</label>
      <div class="col-sm-10">
        <input type="checkbox" name="vehicle1" value="Bike"> Active  
        <input type="checkbox" name="vehicle2" value="Car"> Inactive   
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="form-control">Save</button>
      </div>
    </div>
   <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="reset" class="form-control">Cancel</button>
      </div>
    </div>
  </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      
   <jsp:include page="footer.jsp"></jsp:include>