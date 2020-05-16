<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Venue Info Page</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>

<form action="updateVenueInformation.do" method="POST">

		<c:choose>
			<c:when test="${! empty venue}">
				<table>
					<input type="hidden" name="id" value="${venue.id}"></input>

					<tr>
						<td>Name:</td>
					</tr>
					<tr>
						<td><input type="text" name="name" value="${venue.name}"
							size="25" /></td>
					</tr>
					<tr>
						<td>Address:</td>
					</tr>
					<tr>
						<td><input type="text" name="address"
							value="${venue.address}" size="100" /></td>
					</tr>
					<tr>
						<td>Phone Number:</td>
					</tr>
					<tr>
						<td><input type="text" name="phoneNumber" size="6"
							value="${venue.phoneNumber}" /></td>
					</tr>
					<tr>
						<td>Capacity:</td>
					</tr>
					<tr>
						<td><input type="text" name="capacity"
							value="${venue.capacity}" size="6" /></td>
					</tr>
					<tr>
						<td>Full Service Option:</td>
					</tr>
					<tr>
						<td><input type="text" name="fullService"
							value="${venue.fullService}" size="6" /></td>
					</tr>
					<tr>
						<td>Cost:</td>
					</tr>
					<tr>
						<td><input type="text" name="cost" size="4"
							value="${venue.cost}" size="6" /></td>
					</tr>
					<tr>
						<td>Seasonal Availability:</td>
					</tr>
					<tr>
						<td><input type="text" name="seasonalAvailability" size="4"
							value="${venue.seasonalAvailability}" size="6" /></td>
					</tr>
					<tr>
						<td>Handicap Accessible:</td>
					</tr>
					<tr>
						<td><input type="text" name="handicapAccessible"
							value="${venue.handicapAccessible}" size="6" /></td>
					</tr>
					<tr>
						<td>Number of Bathrooms:</td>
					<tr>
						<td><input type="text" name="numOfBathrooms"
							value="${venue.numOfBathrooms}" size="6" /></td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td><input type="submit" class="button" value="Submit" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</c:when>
			<c:otherwise>
				No Venue Found
			</c:otherwise>
		</c:choose>
	</form>
<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>