<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
			<th class="tb">Phone</th>	
			<th class="tb">View</th>
			<th class="tb">Update</th>
			<th class="tb">Delete</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${contactdata}" var="z">
			<tr class="tb">
			<td class="tb">${z.getName()}</td>
			<td class="tb">${z.getNumber()}</td>
			<th class="tb"><a href="ViewOneContact/${z.getId()}" class="btn btn-primary">View</a></th>
			<th class="tb"><a href="UpdateContact/${z.getId()}" class="btn btn-success">Update</a></th>
			<th class="tb"><a href="DeleteContact/${z.getId()}" class="btn btn-danger">Delete</a></th>
			</tr>
			</c:forEach>
		</tbody>
	
	</table>


</body>
</html>