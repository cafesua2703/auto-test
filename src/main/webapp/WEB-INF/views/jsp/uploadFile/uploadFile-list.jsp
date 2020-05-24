<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="image/jpeg" />
   <title>UploadFile List</title>
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
	<article  id="article1">
		  <c:url value="/uploadFile/uploadFile-save" var="urlSave"/>
		  <c:url value="/uploadFile/uploadFile-view" var="urlView"/>
		  <c:url value="/uploadFile/uploadFile-update" var="urlUpdate"/>
		  <c:url value="/uploadFile/uploadFileDelete" var="urlDelete"/>
		  <h1>List uploadFile:</h1>
		  <a href="${urlSave}">Add uploadFile</a>
		  <br />
		  <br />
		  <table>
		    <tr>
		      <th>Id</th>
		      <th>Name</th>
		      <th>Data</th>
		      <th>View</th>
		      <th>Edit</th>
		      <th>Delete</th>
		    </tr>
		    <c:if test="${not empty listUploadFile}">
		      <c:forEach var="uploadFile" items="${listUploadFile}">
		        <tr style="border: 1px black solid">
		          <td>${uploadFile.id}</td>
		          <td>${uploadFile.fileName}</td>
		          <%-- <td>${uploadFile.data}</td> <c:out value='${uploadFile.data}'/>--%>
		          <td>
		          	<img src="data:image/jpeg;base64,<c:out value='${uploadFile.base64}'/>"  width="200" height="200">
		          </td>
		          <td> <a href="${urlView}/${uploadFile.id}">View</a></td>
		          <td> <a href="${urlUpdate}/${uploadFile.id}">Edit</a></td>
		          <td> <a href="${urlDelete}/${uploadFile.id}">Delete</a></td>
		        </tr>
		      </c:forEach>
		    </c:if>
		  </table>
	</article>
</section>
</body>
<%@include file='../template/footer.html'%>
</html>