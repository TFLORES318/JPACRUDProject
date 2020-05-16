<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Venue</title>
</head>
<body>


	<h1>Your venue was successfully added to the system!</h1>
	<h2>New Venue:</h2>
	<c:choose>
		<c:when test="${! empty venue}">
			<table>
				<tr>
					<td>Venue Name: <em>${venue.name}</em></td>
				</tr>
	</table>
	</c:when>
	</c:choose>


</body>
</html>