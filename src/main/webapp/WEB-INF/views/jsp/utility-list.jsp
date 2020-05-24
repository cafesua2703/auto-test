<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Utility List</title>
   <spring:url value="/resources/core/css/styles.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <!-- Latest minified bootstrap css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
</head>
<%@include file='template/header.html'%>
<body>
<section>
	<article  id="article1">
		  <c:url value="/utility-save" var="urlSave"/>
		  <c:url value="/utility-view" var="urlView"/>
		  <c:url value="/utility-update" var="urlUpdate"/>
		  <c:url value="/utilityDelete" var="urlDelete"/>
		  <h1>List Utility:</h1>
		  <a href="${urlSave}">Add Utility</a>
		  <br />
		  <br />
		  <table>
		  <!--   <tr>
		      <th>Name</th>
		      <th>Address</th>
		      <th>View</th>
		      <th>Edit</th>
		      <th>Delete</th>
		    </tr> -->
		    <c:if test="${not empty listUtility}">
		      <c:forEach var="utility" items="${listUtility}">
		        <tr >
		          
		      <th>Id</th> <td>${utility.id}</td>
		        </tr>
		        <tr>
		          <th>Test Suite </th><td >${utility.testSuite}</td></tr>
		        <tr>
		         <th>Test Script </th> <td >${utility.testScript}</td></tr>
		        <tr>
		          <td colspan="2"> <a href="${urlView}/${utility.id}">View</a> | 
		        
		           <a href="${urlUpdate}/${utility.id}">Edit</a> |
		       
		          <a href="${urlDelete}/${utility.id}">Delete</a>
		          </td>
		         </tr>
		      </c:forEach>
		    </c:if>
		  </table>
	</article>
</section>
</body>
<%@include file='template/footer.html'%>
</html>