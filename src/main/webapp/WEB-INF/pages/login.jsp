<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="${pageContext.request.contextPath}/resources/css/lg.css"  rel="stylesheet"/> 
</head>
<body>
<div class="container">

    <form id="frm" method="POST" action="login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
        

            <button class="btn btn-lg btn-primary btn-block"  type="submit">Log In</button>
            <span>${msg}</span>
            <img id="load" alt="" src="${pageContext.request.contextPath}/resources/img/giphy.gif"
             style="width:50px;height:50px;display:none">
          
        </div>

    </form>

</div>
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script>

</body>
</html>