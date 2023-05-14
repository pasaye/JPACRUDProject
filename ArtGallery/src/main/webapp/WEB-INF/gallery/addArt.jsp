<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../bootHeader.jsp"/>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary bg-dark" data-bs-theme="dark">
  <div class="container-fluid">
<h1 class="navbar-brand">Art Management System</h1>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
      <form class="d-flex" role="search" action="getShow.do" method="GET">
         <input type="text" name="id" placeholder="Enter Art ID#" />
 		 <input class="btn btn-outline-success" type="submit" value="Show gallery" />
	  </form>
    </div>
</nav>
<jsp:include page="../navbar.jsp"/>

<h1>Add new Art</h1>


<form action="add.do" method="POST">


<label for="name">Name of Piece?
<input id="name" type="text" name="name" required >
</label>
<br>
<label for="art">Who made it?
<input for="art" type="text" name="artist" required >
</label>
<br>
<label for="year" >Year made?
<input id="year" type="number" name="yearMade" min="1" required >
</label>
<br>
<label for="work">Art Style?
<input id="work" type="text" name="style"  >
</label>
<br>
<label for="desc">Description:
<input id="desc" type="text" name="description" required >
</label>
<br>
<label for="cost">Price:
<input id="cost" type="number" name="price" min="1" max="9,223,372,036,854,775,807" >
</label>
<br>
<label for="locat">Location:
<input id="locat" type="text" name="location"  >
</label>
<br>
<label for="pic">Paste: image url
<input id="pic" type="text" name="image" >
</label>
<br>

<input type="submit" value="Add">

</form>

<jsp:include page="../bootFooter.jsp"/>
</body>
</html>