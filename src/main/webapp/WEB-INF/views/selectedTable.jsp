<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Page</title>
</head>
<body>

		<%@include file="/select.jsp"%>
	<form id="selectForm" name="selectFormJsp" method="POST"
		action="selectedTable">
		<fieldset>
			<legend>
				<b>&nbsp;&nbsp;&nbsp;Selected Table Data&nbsp;&nbsp;&nbsp;</b>
			</legend>
			<center>
				<hi>Selected Origin : ${selectOrigin}</hi>
				<hi>Selected Destination : ${selectDestination}</hi>

				<table border="1" cellpadding="5">
					<tr>
						<th><%="coloum1"%></th>
						<th><%="coloum2"%></th>
						<th><%="coloum3"%></th>
						<th><%="coloum4"%></th>
					</tr>
					<%
						for (int i = 0; i < 4; i++) {
					%>
					<tr>
						<td><%="data1"%></td>
						<td><%="data2"%></td>
						<td><%="data3"%></td>
						<td><%="data4"%></td>
					</tr>

					<%
						}
					%>
				</table>
			</center>
		</fieldset>
	</form>
	<div></div>
</body>
</html>