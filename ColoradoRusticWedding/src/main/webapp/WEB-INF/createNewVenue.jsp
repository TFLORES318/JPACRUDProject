<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/weddingvenues.css">
</head>
<body>

	<form action="insertAVenue.do" method="POST">
		<h1>Add a Rustic Wedding Venue</h1>
		<h3>
			<em>Must be in Colorado</em>
		</h3>
		<table>
			<tr>
				<td>Name:</td>
			</tr>
			<tr>
				<td><input type="text" name="name" size="25" /></td>
			</tr>
			<tr>
				<td>Address:</td>
			</tr>
			<tr>
				<td><input type="text" name="address" size="25" /></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
			</tr>
			<tr>
				<td><input type="text" name="phoneNumber" size="25" /></td>
			</tr>
			<tr>
				<td>Capacity:</td>
			</tr>
			<tr>
				<td><input type="text" name="capacity" size="25" /></td>
			<tr>
				<td>Full Service Option (Yes or No):</td>
			</tr>
			<tr>
				<td><input type="text" name="fullService" size="25" /></td>
			</tr>
			<tr>
				<td>Cost:</td>
			</tr>
			<tr>
				<td><input type="text" name="cost" size="25" /></td>
			</tr>
			<tr>
				<td>Seasonal Availability (Seasonal or All Year Round):</td>
			</tr>
			<tr>
				<td><input type="text" name="seasonalAvailability" size="25" /></td>
			</tr>
			<tr>
				<td>Handicap Accessible (Yes or No):</td>
			</tr>
			<tr>
				<td><input type="text" name="handicapAccessible" size="25" /></td>
			</tr>
			<tr>
				<td>Number of Bathrooms:</td>
			</tr>
			<tr>
				<td><input type="text" name="numOfBathrooms" size="25" /></td>
			</tr>
		</table>
		<input type="submit" class="button" value="Submit" />
	</form>
	
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>