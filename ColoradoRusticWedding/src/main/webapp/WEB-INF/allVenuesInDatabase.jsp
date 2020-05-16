<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colorado Rustic Wedding Venues</title>
</head>
<body>

	<ul>
		<c:forEach var="venue" items="${venues}">
			<li>${venue.id}${venue.name}</li>
			<form action="venueEditor.do" method="POST">
				<input type="submit" class="button" value="Change Venue Info" /> <input
					type="hidden" name="id" value="${venue.id}" />

			</form>
			<form action="removeVenue.do" method="POST">
				<input type="submit" class="button"
					value="Remove Venue From Database" /> <input type="hidden"
					name="id" value="${venue.id}" />

			</form>
		</c:forEach>
	</ul>

	<form action="/" a href="index.do" method="POST">
		<input type="submit" class="button" value="Home" />

	</form>


</body>
</html>