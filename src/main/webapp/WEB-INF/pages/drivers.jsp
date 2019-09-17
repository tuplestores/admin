<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="header.jsp"></jsp:include>
        
        

        <!-- Begin Page Content -->
        <div class="container-fluid">
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Drivers</h1>
            <a href="adddriver.html" class="btn btn-primary btn-icon-split btn-sm">
             <span class="icon text-white-50"> <i class="fas fa-plus"></i> </span></a>
          </div>




          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Drivers</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="driverTable"  width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>Mobile</th>
                      <th>Vehicle</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!-- <tr>
                      <td>Tiger Nixon</td>
                      <td>KL64H5560</td>
                      <td>Ramesh K</td>
                      <td><a href="#" class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">Active</a></td>
                      <td><a href="#" class="btn btn-warning btn-circle btn-sm"><i class="fas fa-edit"></i></a> <a href="#" class="btn btn-info btn-circle btn-sm"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger btn-circle btn-sm"><i class="fas fa-trash"></i></a>
                      </td>
                    </tr>
                    <tr>
                      <td>Nexon TATA</td>
                      <td>KL55H4565</td>
                      <td>Biju T K</td>
                      <td><a href="#" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm">Inactive</a></td>
                      <td><a href="#" class="btn btn-warning btn-circle btn-sm"><i class="fas fa-edit"></i></a> <a href="#" class="btn btn-info btn-circle btn-sm"><i class="fas fa-eye"></i></a> <a href="#" class="btn btn-danger btn-circle btn-sm"><i class="fas fa-trash"></i></a>
                      </td>
                    </tr> -->
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
<jsp:include page="footer.jsp"></jsp:include>

<script>

var dtable;
$(document).ready( function () {
	
	dtable =	$('#driverTable').DataTable();
	
	fillDriverTable($('#hid').val());
	
});
</script>
 <script src="${pageContext.request.contextPath}/resources/js/pages/drivers.js"></script>





