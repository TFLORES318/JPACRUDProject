<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RusticWedding</title>
</head>
<body>
	<center><h1>Rustic Wedding Venue Finder</h1></center>
	<p><h3><em>Best suit your Client's needs in Beautiful Colorado</em></h3></p>
	<form action="getVenue.do" method="GET">
		Venue ID: <input type="text" name="vid" /> <input type="submit"
			value="Show Venue" />
	</form>
	
		<form action="getVenueByName.do" method="GET">
		Venue Name: <input type="text" name="venueName" /> <input type="submit"
			value="Show Venue Info" />
	</form>

	<form action="addVenue.do" method="POST">
		<input type="submit" class="button" value="Add a Venue" />


	</form>
	
		<form action="listAllVenues.do" method="GET">
		<input type="submit" class="button" value="List of Venues" />


	</form>
	
</body>
</html>