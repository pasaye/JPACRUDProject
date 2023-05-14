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


<c:choose>
	<c:when test="${! empty art.id }">
			<h1>Art Piece Details</h1>



				${art.name}
				${art.artist}
				${art.yearMade}
				${art.style}
				${art.description}
				${art.price }
				$art.location}



				<div class='math'>

				This painting is  <c:out value="${2023 - art.yearMade}"></c:out> years old.

				</div>


				<img alt="picture of the mona lisa" src="${art.image}" class="img-fluid" width="600" height="auto">


				<div class="gps">
					<iframe 
						src="https://www.google.com/maps?q=${art.location}&z=10&output=embed" 
						width="600" 
						height="450" 
						frameborder="0" 
						allowfullscreen>
					</iframe>
				</div>

	</c:when>
	<c:otherwise>
	<h1>Please select the correct Art ID: number. Otherwise Art Piece may not exist</h1>
	
	</c:otherwise>
</c:choose>

<jsp:include page="../bootFooter.jsp"/>
</body>
</html>