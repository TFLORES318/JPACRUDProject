<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Venue Details</title>
<jsp:include page="bootstrapHead.jsp" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/weddingvenues.css">
</head>
<body>
	<c:choose>
		<c:when test="${! empty venue}">
			<h1>${venue.name}</h1>
			<h4>ID: ${venue.id}</h4>
			<h4>Address: ${venue.address}</h4>
			<h4>Phone Number: ${venue.phoneNumber }</h4>
			<h4>Capacity: ${venue.capacity }</h4>
			<h4>Full Service: ${venue.fullService }</h4>
			<h4>Cost: ${venue.cost }</h4>
			<h4>Seasonal Availability: ${venue.seasonalAvailability }</h4>
			<h4>Handicap Accessible: ${venue.handicapAccessible }</h4>
			<h4>Number of Bathrooms on Site: ${venue.numOfBathrooms }</h4>

			<form action="venueEditor.do" method="POST">
				<input type="submit" class="button" id="thisButton" value="Change Venue Info" /> <input
					type="hidden" name="id" value="${venue.id}" /> 
				
			</form>
			
			<form action="removeVenue.do" method="POST">
				<input type="submit" class="button" id="thisButton" value="Remove Venue From Database" /> <input
					type="hidden" name="id" value="${venue.id}" /> 
				
			</form>
			
			<form action="/" a href="index.do" method="POST">
				<input type="submit" class="button" id="thisButton" value="Home" />
				
			</form>

		</c:when>
		<c:otherwise>
			<p id="none">No Venue exists with that ID</p>
			
			<form action="/" a href="index.do" method="POST">
				<input type="submit" class="button" value="Home" />
				
			</form>
		</c:otherwise>
	</c:choose>
	
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>