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

<h1 style="margin: auto; width: 80%; text-align: center;">Update User</h1>

<br>

<form action="${pageContext.request.contextPath}/UpdateUserToDB" method="post" style="margin: auto; width: 80%; text-align: center;">
	
		<input type="hidden" value="${userdata.getId()}" name="user" >
		
		<br>
		
		<input type="text" placeholder="UserName" value="${userdata.getUsername() }" class="form-control" name="user">
		
		<br>
		
		<input type="email" placeholder="Email" value="${userdata.getEmail()}" class="form-control" name="user">
		
		<br>
		
		<input type="password" placeholder="Password" value="${userdata.getPassword()}" class="form-control" name="user">
		
		<br>
		
		<input type="number" placeholder="Phone" value="${userdata.getPhone()}" class="form-control" name="user">
		
		<br>
		
		<textarea placeholder="Address" class="form-control" name="user">${userdata.getAddress()}</textarea>
		
		<br>
		
		<input type="submit" value="Update" class="btn btn-primary">
	
	</form>

</body>
</html>