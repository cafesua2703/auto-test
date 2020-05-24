<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>uploadFile Save</title>
   <spring:url value="/resources/core/css/styles.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <!-- Latest minified bootstrap css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
	
</head>
<%@include file='../template/header.html'%>
<body>
<section>
	<article id="article1">
	  <a href="<c:url value="/uploadFile/uploadFile-list" />" >List uploadFile</a><br />
	  <h1>Add new uploadFile:</h1>
	  <c:url value="/uploadFile/saveUploadFile" var="saveUploadFile"/>
	  <div class="line">
		  <form:form action="${saveUploadFile}" method="POST"
		    modelAttribute="uploadFile">
		      Name: <form:input class="button" path="fileName" /> <br/> <br/>
		      Data: <form:input class="button" path="data" /> <br/> <br/>
		    <button class="button" type="submit">Submit</button>
		  </form:form>
	</div>
  </article>
  </section>
</body>

<%@include file='../template/footer.html'%>
</html>