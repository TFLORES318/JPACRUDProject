<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RusticWedding</title>
<jsp:include page="bootstrapHead.jsp" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/weddingvenues.css">

</head>
<body>
	<center>
		<h1>Rustic Wedding Venue Finder</h1>
	</center>

	<span class="bottomRight">
		<h3>
			<em>Best suit your Client's needs in Beautiful Colorado</em>
		</h3>

		<div class="options">
			<form action="getVenue.do" method="GET">
				ID: <input type="text" name="vid" /> <input type="submit"
					class="button" value="Show Venue" />
			</form>

			<form action="getVenueByName.do" method="GET">
				Name: <input type="text" name="venueName" /> <input type="submit"
					class="button" value="Show Venue Info" />
			</form>

			<form action="addVenue.do" method="POST">
				<input type="submit" class="button" value="Add a Rustic Venue" />


			</form>

			<form action="listAllVenues.do" method="GET">
				<input type="submit" class="button" value="Current List of Venues" />


			</form>
	</div>
	</span>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>