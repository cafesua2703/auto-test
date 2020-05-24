<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Customer Save</title>
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
	<article id="article1">
	  <a href="<c:url value="/customer-list" />" >List Customer</a><br />
	  <h1>Add new Customer:</h1>
	  <c:url value="/saveCustomer" var="saveCustomer"/>
	  <div class="line">
		  <form:form action="${saveCustomer}" method="POST"
		    modelAttribute="customer">
		      Name: <form:input class="button" path="name" /> <br/> <br/>
		      Address: <form:input class="button" path="address" /> <br/> <br/>
		    <button class="button" type="submit">Submit</button>
		  </form:form>
	</div>
  </article>
  </section>
</body>

<%@include file='template/footer.html'%>
</html>