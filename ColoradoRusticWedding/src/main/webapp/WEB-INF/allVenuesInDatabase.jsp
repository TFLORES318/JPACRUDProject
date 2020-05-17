<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colorado Rustic Wedding Venues</title>
<jsp:include page="bootstrapHead.jsp" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/weddingvenues.css">
</head>
<body>

<ul id="checkBoxGrid">
		<c:forEach var="venue" items="${venues}">
			<li>${venue.name}</li>
			<form action="venueEditor.do" method="POST">
				<center><input type="submit" id="thisButton" class="button" value="Change Venue Info" /></center> 
				<input type="hidden" name="id" value="${venue.id}" />

			</form>
			<form action="removeVenue.do" method="POST">
				<center><input type="submit" id="thisButton" class="button"
					value="Remove Venue From Database" /></center> <input type="hidden"
					name="id" value="${venue.id}" />

			</form>
		</c:forEach>
	</ul>
<br></br>
<br></br>
	<form action="/" a href="index.do" method="POST">
		<center><input type="submit" id="thatButton" class="button" value="Home" /></center>

	</form>

<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>