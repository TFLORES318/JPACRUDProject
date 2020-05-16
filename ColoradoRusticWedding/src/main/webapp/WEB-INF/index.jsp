<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rustic Wedding Venues</title>
</head>
<body>
	<h1>Rustic Wedding Venues in Beautiful Colorado</h1>
	<form action="getVenue.do" method="GET">
		Venue ID: <input type="text" name="vid" /> <input type="submit"
			value="Show Venue" />
	</form>

	<form action="addVenue.do" method="POST">
		<input type="submit" class="button" value="Add a Venue" />


	</form>
	
		<form action="listAllVenues.do" method="GET">
		<input type="submit" class="button" value="List of Venues" />


	</form>
	
</body>
</html>