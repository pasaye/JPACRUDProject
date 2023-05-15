<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../bootHeader.jsp" />
</head>
<body style="background-image: radial-gradient(circle, #ffffff 15%, #e5e5e5 25%, #fefae0 40%)">
	<nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark"
		data-bs-theme="dark">
		<div class="container-fluid">
			<h1 class="navbar-brand">Art Management System</h1>
			<ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
			<form class="d-flex" role="search" action="getShow.do" method="GET">
				<input type="text" name="id" placeholder="Enter Art ID#" /> <input
					class="btn btn-outline-success" type="submit" value="Show gallery" />
			</form>
		</div>
	</nav>
	<div class="container d-flex justify-content-center">
		<jsp:include page="../navbar.jsp" />

	</div>

	<c:choose>
		<c:when test="${! empty art.id }">
			<div class="card mb-3" style="margin-top: 120px; margin-left: 50px; max-width: 500px; max-height: 300px;">
						<img src="${art.image}" class="img-fluid rounded-start card-img-top" 
							alt="picture of the ${art.name }">
						<div class="card-body">
							<h5 class="card-title">${art.name}</h5>
							<p class="card-text">${art.description}</p>
							<p class="card-text">
								<small class="text-body-secondary">This painting is <c:out
										value="${2023 - art.yearMade}"></c:out> years old and was
									created by ${art.artist} in the year ${art.yearMade} in the
									style of ${art.style} and is estimated to be worth ${art.price }
								</small>
							</p>
						</div>
					</div>
				

			
	
			<iframe style="margin-top: -315px; margin-right: 60px;" class="rounded float-end"
				src="https://www.google.com/maps?q=${art.location}&z=10&output=embed"
				width="600" height="450" frameborder="0" allowfullscreen> </iframe>
		</c:when>
		<c:otherwise>
			<h1>Please select the correct Art ID: number. Otherwise Art
				Piece may not exist</h1>

		</c:otherwise>
	</c:choose>
	<jsp:include page="../bootFooter.jsp" />
</body>
</html>