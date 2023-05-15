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
<body
	style="background-image: url('https://collectionapi.metmuseum.org/api/collection/v1/iiif/11417/42494/main-image'); background-repeat: no-repeat; background-size: cover;">
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
		<h1>Update Your Art</h1>
	</div>

	<div
		class="container min-vh-100 d-flex justify-content-center align-items-center">

		<form action="edit.do" method="POST"
			style="width: 500px; background-color: rgba(192, 185, 221, .3); background-blend-mode: overlay; background-repeat: no-repeat; background-size: contain; border: 2px solid rgb(192, 185, 221); border-radius: 8px;">

			<jsp:include page="../navbar.jsp" />

			<div class="mb-3">
				<label for="id" class="form-label">Enter ID: </label> <input id="id"
					type="number" name="id" required min="1" class="form-control">
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">Name of Piece:</label> <input
					id="name" type="text" name="name" required class="form-control">
			</div>
			<div class="mb-3">
				<label for="art" class="form-label">Who made it:</label> <input
					id="art" type="text" name="artist" required class="form-control">
			</div>
			<div class="mb-3">
				<label for="year" class="form-label">Year made:</label> <input
					id="year" type="number" name="yearMade" min="1" required
					class="form-control">
			</div>
			<div class="mb-3">
				<label for="work" class="form-label">Art Style:</label> <input
					id="work" type="text" name="style" class="form-control">
			</div>
			<div class="mb-3">
				<label for="desc" class="form-label">Description:</label> <input
					id="desc" type="text" name="description" required
					class="form-control">
			</div>
			<div class="mb-3">
				<label for="cost" class="form-label">Price:</label> <input id="cost"
					type="number" name="price" min="0" max="9,223,372,036,854,775,807"
					class="form-control">
			</div>
			<div class="mb-3">
				<label for="locat" class="form-label">Location:</label> <input
					id="locat" type="text" name="location" class="form-control">
			</div>
			<div class="mb-3">
				<label for="pic" class="form-label">Paste: image url</label> <input
					id="pic" type="text" name="image" class="form-control">
			</div>

			<input type="submit" class="btn btn-primary" value="Update" name="id">

		</form>
	</div>

	<jsp:include page="../bootFooter.jsp" />
</body>
</html>