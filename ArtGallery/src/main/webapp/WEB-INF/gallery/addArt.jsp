<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add new Art</h1>


<form action="add.do" method="POST">


<label for="name">Name of Piece?
<input id="name" type="text" name="name"  >
</label>
<br>
<label for="art">Who made it?
<input for="art" type="text" name="artist"  >
</label>
<br>
<label for="year" >Year made?
<input id="year" type="number" name="yearMade"  >
</label>
<br>
<label for="work">Art Style?
<input id="work" type="text" name="style"  >
</label>
<br>
<label for="desc">Description:
<input id="desc" type="text" name="description"  >
</label>
<br>
<label for="cost">Price:
<input id="cost" type="number" name="price"  >
</label>
<br>
<label for="locat">Location:
<input id="locat" type="text" name="location"  >
</label>
<br>
<input type="submit" value="Add">

</form>

</body>
</html>