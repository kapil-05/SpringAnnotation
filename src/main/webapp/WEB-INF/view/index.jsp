<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<jsp:include page="/WEB-INF/view/head.jsp"></jsp:include>
</head>
<body>

<a href="${pageContext.request.contextPath}/ViewUser" class="btn btn-info btn-block" style="width:80%; margin: auto;">View User</a>
<br>
<a href="${pageContext.request.contextPath}/AddContact" class="btn btn-info btn-block" style="width:80%; margin: auto;">Add Contact</a>
<br>
<a href="${pageContext.request.contextPath}/ViewContact" class="btn btn-info btn-block" style="width:80%; margin: auto;">View Contact</a>

<div style="width:30%; margin:auto; border-style: solid; border-width:1px; border-color:#EDEDED; ">
	
	<form action="AddProfileToDB" method="post" style="margin: auto; width: 90%;">
	
	<br>
	
	<p style="color:black; font-size:25px; float:left">Create Account</p>
	
	<br>
	<br>
	<br>
		<span class="text-danger">*UserName: </span>
		<input path="username" type="text" placeholder="UserName" class="form-control" name="profile"/>
		
		<br>
		
		<span class="text-danger">*Email Address: </span>
		<input type="text" placeholder="Email" class="form-control" name="profile"/>
		
		<br>
		
		<span class="text-danger">*Password: </span>
		<input type="password" placeholder="Password" class="form-control" name="profile"/>
		
		<br>
		
		<span class="text-danger">*Mobile Number: </span>
		<input type="number" placeholder="Phone" class="form-control" name="profile"/>
		
		<br>
		
		<span class="text-danger">*Address: </span>
		<textarea placeholder="Address" class="form-control" name="profile"></textarea>
		
		<br>
		
		<input type="submit" value="Add" class="btn btn-primary" style="width: 100%">
	
	</form>
	
	</div>

</body>
</html>