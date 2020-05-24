<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <title>uploadFile Update</title>
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
<article>
  <a href="<c:url value="/uploadFile/uploadFile-list" />">List uploadFile</a>
  <br />
  <h1>Edit uploadFile:</h1>
  <c:url value="/uploadFile/updateUploadFile" var="updateUploadFile" />
  <div class="line">
  <form:form action="${updateUploadFile}" method="POST" modelAttribute="uploadFile" enctype="multipart/form-data">
      Id: <form:input class="button" path="id" readonly="true" /> <br/> <br/>
      Name: <form:input class="button" path="fileName" /> <br/> <br/>
      Data:  <img src="data:image/jpeg;base64,<c:out value='${uploadFile.base64}'/>"  >
      <%-- <form:input  class="button" path="data" /> --%>
      <%-- <form method="post" action="doUpload" enctype="multipart/form-data"> --%>
            <table border="0">
                <tr>
                    <td>Pick file #1:</td>
                    <td><input class="button" type="file" name="uploadFile2" size="50" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    <input class="button" type="submit" value="Upload" /></td>
                </tr>
            </table>
        <%-- </form> --%>
       <br/> 
      
      <br/>
    <!-- <button class="button" type="submit">Submit</button> -->
  </form:form>
  </div>
  </article>
  </section>
</body>
<%@include file='../template/footer.html'%>
</html>