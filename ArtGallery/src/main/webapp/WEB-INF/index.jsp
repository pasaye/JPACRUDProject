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


<c:forEach var="x"  items="${artList }">

<ul>
      <li>  <a href="getShow.do?id=${x.id }" >  ${x.id }</a></li>
</ul>
	


</c:forEach>


</body>
</html>