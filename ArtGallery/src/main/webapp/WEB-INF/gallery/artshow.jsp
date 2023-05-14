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

<h1>Art Piece Details</h1>


${art.id}
${art.name}
${art.artist}
${art.yearMade}
${art.style}
${art.description}
${art.price }
$art.location}

<img alt="picture of the mona lisa" src="${art.image}">


<div class="gps">
		<iframe 
			src="https://www.google.com/maps?q=${art.location}&z=10&output=embed" 
			width="600" 
			height="450" 
			frameborder="0" 
			allowfullscreen>
		</iframe>
	</div>

</body>
</html>