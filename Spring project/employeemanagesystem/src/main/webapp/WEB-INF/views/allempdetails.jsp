<%@page import="javax.swing.text.StyledEditorKit.ForegroundAction"%>
<%@page import="com.te.employeemanagesystem.entity.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<%
List<Employee> employees = (List<Employee>) request.getAttribute("allrecords");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table,tr,td {
	border: 1px solid black;
}
</style>
<body>

	<h1>all employee details</h1>
	<br>
	<br>
	<!--  -->
	<%
	for (Employee emp : employees) {
	%>
	<br> <br>
	<%=emp.getEmpId()%>
	<br>
	<%=emp.getEmpMail()%>
	<br>
	<%=emp.getEmpName()%>
	<br>
	<%
	}
	%>
	
	
	<table>
		<%
	for (Employee emp : employees) {
	%>
	<tr> 
	<td><%=emp.getEmpId()%> </td>
	<td><%=emp.getEmpMail()%> </td>
	<td> <%=emp.getEmpName()%></td>
	
	</tr>
		<%
	}
	%>
	</table>
	
	

	
	
	
</body>
</html>