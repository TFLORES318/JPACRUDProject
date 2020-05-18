<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Venue</title>
<jsp:include page="bootstrapHead.jsp" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/weddingvenues.css">
</head>
<body>


	<h1>Your venue was successfully added to the system!</h1>
	<c:choose>
		<c:when test="${! empty venue}">
			<table>
				<tr>
					<td>Name: <em>${venue.name}</em></td>
				</tr>
				<tr>
					<td>ID: ${venue.id}</td>
				<tr>
					<td>Address: ${venue.address}
				</tr>
				<tr>
					<td>Phone Number: ${venue.phoneNumber }</td>
				</tr>
				<tr>
					<td>Capacity: ${venue.capacity}</td>
				</tr>
				<tr>
					<td>Full Service: ${venue.fullService }</td>
				</tr>
				<tr>
					<td>Cost: ${venue.cost }</td>
				</tr>
				<tr>
					<td>Seasonal Availability: ${venue.seasonalAvailability }</td>
				</tr>
				<tr>
					<td>Handicap Accessible: ${venue.handicapAccessible }</td>
				</tr>
				<tr>
					<td>Number of Bathrooms on Site: ${venue.numOfBathrooms }</td>
				</tr>

			</table>
		</c:when>
	</c:choose>
	
	<form action="home.do" method="POST">
				<input type="submit" class="button" value="Home" />
				
			</form>

<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>