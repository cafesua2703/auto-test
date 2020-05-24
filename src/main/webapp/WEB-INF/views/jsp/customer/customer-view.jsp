<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>Customer View</title>
   <spring:url value="/resources/core/css/styles.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <!-- Latest minified bootstrap css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
    <spring:url value="/resources/core/js/index.js" var="coreJs" />
    <spring:url value="/resources/core/js/script.js" var="coreJs2" />
   	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" /> 
    <script src="${coreJs}"></script>
    <script src="${coreJs2}"></script>
    <script src="${bootstrapJs}"></script>
    <!-- Internet Explorer HTML5 enabling script: -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<%@include file='../template/header.html'%>
<body>
<section>
<article  id="article1">
  <a href="<c:url value="/customer/customer-list" />" >List Customer</a><br />
  <h1>View Customer:</h1>  
  Customer ID: ${customer.id} <br/>
  Customer Name: ${customer.name} <br/>
  Customer Address: ${customer.address} <br/>
  </article>
  </section>
</body>
<%@include file='../template/footer.html'%>
</html>