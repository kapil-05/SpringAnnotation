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

<table class="table table-striped" style="margin: auto; width: 80%;">
	
		<thead>
			<tr class="tb">
			<th class="tb">UserName</th>
			<th class="tb">Email</th>
			<th class="tb">Password</th>
			<th class="tb">Phone</th>
			<th class="tb">Address</th>
			<th class="tb">Update</th>
			<th class="tb">Delete</th>
			</tr>
		</thead>
		
		<tbody>
			<tr class="tb">
			<td class="tb">${userdata.getUsername()}</td>
			<td class="tb">${userdata.getEmail()}</td>
			<td class="tb">${userdata.getPassword()}</td>
			<td class="tb">${userdata.getPhone()}</td>
			<td class="tb">${userdata.getAddress()}</td>
			<th class="tb"><a href="UpdateOneUser/${userdata.getId()}" class="btn btn-success">Update</a></th>
			<th class="tb"><a href="UpdateOneUser/${userdata.getId()}" class="btn btn-danger">Delete</a></th>
			</tr>
		</tbody>
	
	</table>

</body>
</html>