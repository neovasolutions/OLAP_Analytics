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

	<%-- 		<%@include file="/select.jsp"%> --%>
	<form id="selectForm" name="selectFormJsp" method="POST"
		action="selectedTable">
		<fieldset>
			<legend>
				<b>&nbsp;&nbsp;&nbsp;Selected Table Data&nbsp;&nbsp;&nbsp;</b>
			</legend>
			<center>
				<hi> <strong>Selected Origin </strong> : ${selectOrigin}</hi>
				&nbsp;&nbsp;&nbsp;
				<hi> <strong>Selected Destination </strong> :
				${selectDestination}</hi>
				</br>
				<h4>
					Click On Button to go back : <input id="backToSelectors"
						type="submit" value="Back"
						onclick="document.forms[0].action = 'select'; return true;" />
				</h4>
			</center>
			<center>
				<div>
					<table border="1" cellpadding="5" bgcolor="#c1cdcd"
						bordercolor="#21a6ce">
						<tr>
							<th><%="Id"%></th>
							<th><%="Origin"%></th>
							<th><%="Destination"%></th>
							<th><%="Day Oh Week"%></th>
							<th><%="Carrier Name"%></th>


						</tr>
						<c:forEach items="${listFactFlight}" var="person">
							<tr>
								<td>${person.id}</td>
								<td>${selectOrigin}</td>
								<td>${selectDestination}</td>
								<td>${person.dayOfWeek}</td>
								<td>${person.carriername}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</center>
		</fieldset>
	</form>

</body>
</html>