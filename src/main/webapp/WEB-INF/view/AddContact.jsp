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

<div style="width:30%; margin:auto; border-style: solid; border-width:1px; border-color:#EDEDED; ">
	
	<form action="AddContactToDB" method="post" style="margin: auto; width: 90%;">
	
	<br>
	
	<p style="color:black; font-size:25px; float:left">Create Contact</p>
	
	<br>
	<br>
	<br>
		<span class="text-danger">*Name: </span>
		<input path="username" type="text" placeholder="UserName" class="form-control" name="contact"/>
		
		<br>
	
		<span class="text-danger">*Mobile Number: </span>
		<input type="number" placeholder="Phone" class="form-control" name="contact"/>
		
		<br>
		
		<input type="submit" value="Add" class="btn btn-primary" style="width: 100%">
	
	</form>
	
	</div>

</body>
</html>