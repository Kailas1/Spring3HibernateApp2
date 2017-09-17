<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2>Add Employee Data</h2>
		<form:form method="POST" action="/sdnext/save.html">
	   		<table border="1px solid red">
			    <tr>
			        <td><form:label path="id"> ID:</form:label></td>
			        <td><form:input path="id" value="${employee.id}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="title"> Title:</form:label></td>
			        <td><form:input path="title" value="${employee.title}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="details">Job Details:</form:label></td>
			        <td><form:input path="details" value="${employee.details}"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="link1">Notification Link:</form:label></td>
			        <td><form:input path="link1" value="${employee.link1}"/></td>
			    </tr>
			   
			    <tr>
			        <td><form:label path="link2">Apply Link:</form:label></td>
                    <td><form:input path="link2" value="${employee.link2}"/></td>
			    </tr>
			    
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty employees}">
		<h2>List Employees</h2>
	<table align="left" border="1">
		<tr>
			<th>Job ID</th>
			<th>Job Title</th>
			<th>Job Details</th>
			<th>Job Link1</th>
			<th>Job Link2</th>
			<th>Actions on Row</th>
		</tr>

		<c:forEach items="${employees}" var="employee">
			<tr>
				<td><c:out value="${employee.id}"/></td>
				<td><c:out value="${employee.title}"/></td>
				<td><c:out value="${employee.details}"/></td>
				<td><c:out value="${employee.link1}"/></td>
				<td><c:out value="${employee.link2}"/></td>
				<td align="center"><a href="edit.html?id=${employee.id}">Edit</a> | <a href="delete.html?id=${employee.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>