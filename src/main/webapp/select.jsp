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
	<form id="selectForm" name="selectFormJsp" method="POST"
		action="selectedTable">
		<fieldset>
			<legend style="">
				<center>
					<b>&nbsp;&nbsp;&nbsp;Olap Analyser&nbsp;&nbsp;&nbsp;</b>
				</center>

			</legend>
			<center>
				<div id="selectors">
					<p style="color: black; size: 100px; font-family: sans-serif;">Please
						Select Origin and Destination.</p>
					<p style="color: black;; size: 100px; font-family: sans-serif;">
						Origin:<select name="selectOrigin" class="selectOrigin" size="1" 
							style="width: 400px; ">
							<option value="0">-------------------------Select--------------------------------</option>
							<c:forEach items="${airportsDetailList}" var="item" varStatus="count">
								<option value="${item.name} - (${item.id})">${item.name} - (${item.id})</option>
							</c:forEach>
						</select> &nbsp; &nbsp; Destination: <select name="selectDestination"
							class="selectDestination" size="1" style="width: 400px;">
							<option value="0">-------------------------Select--------------------------------</option>
							<c:forEach items="${airportsDetailList}" var="item" varStatus="count">
								<option value="${item.name} - (${item.id})">${item.name} - (${item.id})</option>
							</c:forEach>
						</select> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input
							id="submitDates" type="submit" value="Submit" />
					</p>
				</div>
			</center>
		</fieldset>
	</form>
</body>
</html>