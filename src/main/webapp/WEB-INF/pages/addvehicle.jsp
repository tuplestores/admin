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
    <div class="form-group">
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
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="year">Year:</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" placeholder="Year of Manufacturing">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Number:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Plate Number">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Colour:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" placeholder="Vehicle Colour">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="number" >Ride Services:</label>
      <div class="col-sm-10">
        <input type="checkbox" name="vehicle1" value="Bike"> Sedan  <input type="checkbox" name="vehicle2" value="Car"> Mini   <input type="checkbox" name="vehicle3" value="Boat" checked> Micro  <input type="checkbox" name="vehicle3" value="Boat" checked> Primesedan   <input type="checkbox" name="vehicle3" value="Boat"> Rentals  <input type="checkbox" name="vehicle3" value="Boat"> Out Station<br>
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