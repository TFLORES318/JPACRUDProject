<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Venue Details</title>
</head>
<body>

	<h1>Venue: ${venue}</h1>
	<h3>VenueID: ${venue.id} </h3>

	<form action="venueEditor" method="GET">
			<input type="submit" class="button" value="Change Venue Info" /> 
			<input type="hidden" name="vid" value="${venue.id}" />
			<input type="hidden" name="venue" value=${venue }/>
			
		</form>
</body>
</html>