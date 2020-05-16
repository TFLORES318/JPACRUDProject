<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Venue Details</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty venue}">
			<h1>${venue.name}</h1>
			<h3>ID: ${venue.id}</h3>
			<h3>Address: ${venue.address}</h3>
			<h3>Phone Number: ${venue.phoneNumber }</h3>
			<h3>Capacity: ${venue.capacity }</h3>
			<h3>Full Service: ${venue.fullService }</h3>
			<h3>Cost: ${venue.cost }</h3>
			<h3>Seasonal Availability: ${venue.seasonalAvailability }</h3>
			<h3>Handicap Accessible: ${venue.handicapAccessible }</h3>
			<h3>Number of Bathrooms on Site: ${venue.numOfBathrooms }</h3>

			<form action="venueEditor.do" method="POST">
				<input type="submit" class="button" value="Change Venue Info" /> <input
					type="hidden" name="id" value="${venue.id}" /> 
				
			</form>
			
			<form action="removeVenue.do" method="POST">
				<input type="submit" class="button" value="Remove Venue From Database" /> <input
					type="hidden" name="id" value="${venue.id}" /> 
				
			</form>
			
			<form action="/" a href="index.do" method="POST">
				<input type="submit" class="button" value="Home" />
				
			</form>

		</c:when>
		<c:otherwise>
			<p>No Venue exists with that ID</p>
		</c:otherwise>
	</c:choose>
</body>
</html>