<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Art Gallery</title>
<style>

body{
box-sizing:border-box;

}

#div {
margin: 0;
padding: 0;
}
</style>
<jsp:include page="bootHeader.jsp"/>
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

<div id="div" class="container-fluid">

<table class="table table-dark table-hover">
			<thead>
				<tr>
					<th colspan="9" >
					
					<jsp:include page="navbar.jsp"/>
					
					</th>
				
				</tr>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Artist</th>
					<th>Year Made</th>
					<th>Art Style</th>
					<th>About</th>
					<th>Price</th>
					<th>Location</th>
					<th>Edit/Delete</th>
				</tr>
			</thead>

		<tbody></tbody>
	<c:forEach var="x"  items="${artList}">
		<tr>

      <td> ${x.id}</td>
      <td>  <a href="getShow.do?id=${x.id}" >${x.name}</a></td>
      
      <td>  ${x.artist} </td>
      
       <td>  ${x.yearMade} </td>
       
       <td>  ${x.style} </td>
       <td> ${x.description} </td>
       <td>  ${x.price} </td>
      <td>  ${x.location} </td>
      <td><form action="update.do" mehtod="GET" >
<input type="submit" value="Update" >
</form>


<form action="delete.do">
<input type="number" name="id" placeholder="Enter ID# to Delete" >
<input type="submit" value="Delete" >
</form>

		 </td>
	</tr>
</c:forEach>

	</tbody>
	<tfoot>
	
		<tr>
		<td colspan="9">
		<form action="sendToAdd.do" method="CET" >
		
	<div class="d-grid gap-2">
  
<input class="btn btn-primary"  type="submit" value="Add" >
 
</div>	
		
</form>	
		</td>
		</tr>
	
	</tfoot>
	</table>
	</div>
<jsp:include page="bootFooter.jsp"/>
</body>
</html>