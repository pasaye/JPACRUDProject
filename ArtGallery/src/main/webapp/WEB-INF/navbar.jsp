<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="bootHeader.jsp"/>

<div class="d-grid gap-2">
<button class="btn btn-primary " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">Menu</button>
</div>
<div class="offcanvas offcanvas-start show text-bg-dark" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Menu</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
  <button type="button" class="btn btn-secondary"><a href="index.do">Home</a></button>
<button type="button" class="btn btn-secondary"><a href="/update.do">Update</a></button>
<button type="button" class="btn btn-secondary"><a href="/sendToAdd.do">Add</a></button>
  
    
  </div>
</div>


<jsp:include page="bootFooter.jsp"/>
</body>
</html>