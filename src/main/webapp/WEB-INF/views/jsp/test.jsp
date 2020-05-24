<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reprot Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<link rel="stylesheet" type="text/css" href="../resources/core/js/styles.css" />--%>
        <spring:url value="/resources/core/css/styles.css" var="coreCss" />
        <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
        <link href="${bootstrapCss}" rel="stylesheet" />
        <link href="${coreCss}" rel="stylesheet" />
        <%-- <spring:url value="/resources/core/js/index.js" var="coreJs" /> --%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
        <script src="./resources/core/js/index.js"></script>
    	<script src="./resources/core/js/bootstrap.min.js"></script>
        
        <!-- Internet Explorer HTML5 enabling script: -->
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <%@include file='template/header.html'%>
    <body>
    <script type="text/javascript">
        $(document).ready(function(){
            displayObj();
        });
    </script>
     
    <section>
        <article id="article1">
            <h2>Test : ${user}!</h2>
            <div align="center">
        	<h2>Save file</h2>
        <form method="post" action="doUpload" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Pick file #1:</td>
                    <td><input class="button" type="file" name="uploadFile" size="50" /></td>
                </tr>
                <tr>
                    <td>Pick file #2:</td>
                    <td><input class="button" type="file" name="uploadFile" size="50" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input class="button" type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form>
    </div>
        <p>Report:
            <h3>
                    <a target="_blank" href="./resources/Report/${htmlname}">${htmlname}</a>
                </h3>
            </p>
        <p><div style="display:none" id="obj">${objImage}</div>
        Screenshot: <div id="result"></div>
        <div id="image"></div>
        </article>
    </section>
	<hidden id="bw" value="${bw}"></hidden>
	<hidden id="bw1" value="${bw1}"></hidden>
	<hidden id="absolutePath" value="${absolutePath}"></hidden>
    <input type="hidden" id="listImage" value="${listImage}"/>
    <input type="hidden" id="listImage2" value="${listImage2}"/>
    <input type="hidden" id="listReport" value="${listReport}"/>
    <input type="hidden" id="objImage" data="${objImage}"/>
    </body>
    <%@include file='template/footer.html'%>

</html>
