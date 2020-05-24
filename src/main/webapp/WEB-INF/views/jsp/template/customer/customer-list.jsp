<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Customer List</title>
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
<section id="page">
	<article  id="article1">
		  <c:url value="/customer-save" var="urlSave"/>
		  <c:url value="/customer-view" var="urlView"/>
		  <c:url value="/customer-update" var="urlUpdate"/>
		  <c:url value="/customerDelete" var="urlDelete"/>
		  <h1>List Customer:</h1>
		  <a href="${urlSave}">Add Customer</a>
		  <br />
		  <br />
		  <table>
		    <tr>
		      <th>Id</th>
		      <th>Name</th>
		      <th>Address</th>
		      <th>View</th>
		      <th>Edit</th>
		      <th>Delete</th>
		    </tr>
		    <c:if test="${not empty listCustomer}">
		      <c:forEach var="customer" items="${listCustomer}">
		        <tr style="border: 1px black solid">
		          <td>${customer.id}</td>
		          <td>${customer.name}</td>
		          <td>${customer.address}</td>
		          <td> <a href="${urlView}/${customer.id}">View</a></td>
		          <td> <a href="${urlUpdate}/${customer.id}">Edit</a></td>
		          <td> <a href="${urlDelete}/${customer.id}">Delete</a></td>
		        </tr>
		      </c:forEach>
		    </c:if>
		  </table>
	</article>
</section>
</body>
<%@include file='template/footer.html'%>
</html>