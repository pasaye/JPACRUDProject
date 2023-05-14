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
<jsp:include page="../navbar.jsp"/>
<jsp:include page="../bootHeader.jsp"/>

<h1>Edit Your Art</h1>

${edit }

<form action="edit.do" method="POST" >


<label for="id">Enter ID:
<input id="id" type="number" name="id" required min="1">
</label>
<br>
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
<input id="cost" type="number" name="price" min="0" max="9,223,372,036,854,775,807" >
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
<input type="submit" value="Update" name="id" >

</form>

<jsp:include page="../bootFooter.jsp"/>
</body>
</html>