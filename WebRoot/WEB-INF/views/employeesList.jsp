<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Employees</title>
</head>
<body>
<h1>List Employees</h1>
<h3><a href="add.html">Add More Employee</a></h3>

<c:if test="${!empty employees}">
	<table align="left" border="1">
		<tr>
			<th>Job ID</th>
			<th>Job Title</th>
			<th>Job Details</th>
			<th>Job Link1</th>
			<th>Job Link2</th>
		</tr>

		<c:forEach items="${employees}" var="employee">
			<tr>
				<td><c:out value="${employee.id}"/></td>
				<td><c:out value="${employee.title}"/></td>
				<td><c:out value="${employee.details}"/></td>
				<td><c:out value="${employee.link1}"/></td>
				<td><c:out value="${employee.link2}"/></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>