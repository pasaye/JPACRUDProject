<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Art Gallery</title>
<jsp:include page="bootHeader.jsp"/>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div class="container-fluid">

<h1>Art Management System</h1>

<form action="getShow.do" method="GET">
  Art Work ID: <input type="text" name="id" />
  <input type="submit" value="Show gallery" />
</form>


<table class="table table-dark table-hover">
			<thead>
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