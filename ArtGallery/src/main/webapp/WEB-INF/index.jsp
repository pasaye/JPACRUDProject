<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Art Gallery</title>
</head>
<body>

<h1>Welcome to the show</h1>

<form action="getShow.do" method="GET">
  Art Work ID: <input type="text" name="id" />
  <input type="submit" value="Show gallery" />
</form>


<form action="sendToAdd.do" method="CET" >
<input type="submit" value="Add" >
</form>

<form action="update.do" mehtod="GET" >
<input type="submit" value="Update" >
</form>

<form action="delete.do">
<input type="number" name=id >
<input type="submit" value="Delete"  >
</form>

	<c:forEach var="x"  items="${artList}">

<ul>
      <li>ID: ${x.id}</li>
      <li> <a href="getShow.do?id=${x.id}" >Name: ${x.name}</a></li>
      <li>Artist: ${x.artist}</li>
      <li>Year made: ${x.yearMade}</li>
      <li>Art Style: ${x.style}</li>
      <li>About: ${x.description}</li>
      <li>price: ${x.price}</li>
      <li>Location: ${x.location}</li>
</ul>
	
</c:forEach>




</body>
</html>