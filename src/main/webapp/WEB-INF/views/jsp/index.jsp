<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Auto Test</title>
  <%--   <spring:url value="/resources/core/css/styles.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" /> --%>
    <link rel="stylesheet" type = "text/css" href="./resources/core/css/styles.css" />
    <link rel="stylesheet" type = "text/css" href="./resources/core/css/bootstrap.min.css" />
    <!-- Latest minified bootstrap css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />
	<link rel="stylesheet" href="https://checkoutshopper-test.adyen.com/checkoutshopper/sdk/2.5.0/adyen.css" />
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
    <spring:url value="/resources/core/js/index.js" var="coreJs" />
    <spring:url value="/resources/core/js/script.js" var="coreJs2" />
   	<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" /> 
    <script src="${coreJs}"></script>
    <script src="${coreJs2}"></script>
    <script src="${bootstrapJs}"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<!-- Latest minified bootstrap js -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	<%--<link rel="stylesheet" type="text/css" href="../../../../resources/core/css/styles.css" />
    <script src="../../../../resources/core/js/index.js"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.7.7/xlsx.core.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xls/0.7.4-a/xls.core.min.js"></script>
   
   
<!-- <script src="https://checkoutshopper-test.adyen.com/checkoutshopper/sdk/2.5.0/adyen.js"></script> -->
    <script src="https://pay.google.com/gp/p/js/pay.js"></script>
<script type="text/javascript" src="https://checkoutshopper-test.adyen.com/checkoutshopper/assets/js/sdk/checkoutSDK.1.9.2.min.js"></script>
    <!-- Internet Explorer HTML5 enabling script: -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<%@include file='template/header.html'%>
<body>
<section ><!-- Defining the #page section with the section tag -->
    <!-- Article 1 start -->
    <!-- Dividing line -->
    <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
        <details>
		  <summary>Key word:</summary>
		  <p> launchapp | &lt;URL&gt; </p>
		  <p> wait | &lt;milisecond&gt;</p>
		  <p> importdata | &lt;Path of Data  excel file&gt;</p>
		</details>
        <h2>Run test:</h2>
        <input class="button" type="file" id="excelfile" />
        <input class="button" type="button" id="viewfile" value="Export To Table" onclick="ExportToTable()" />
        <input class="button" type="button" id="clear" value="Clear" onclick="clearTableBody()" />
        <input class="button" type="button" id="save" value="Save" onclick="saveTable()" />
        <input class="button" type="button" id="save" value="Download" onclick="download()" />
        <br />
        <div>
            <p class="greeting-id">The ID is </p>
            <p class="greeting-content">The content is </p>
        </div>
        <br />
        <table id="exceltable">
        <dialog id="dialogWaiting"> Please wait ...
		</dialog>
		<div id="loading"  title="Waiting dialog" hidden="hidden"> 
	    	<p>Please wait ...</p>
		</div>
        </table>
        <div class="line">
            <form method="post" action="test">
                <input type="radio" name="name" id="sikuli" value="sikuli" checked="checked"> Sikuli<br>
                <input type="radio" name="name" id="selenium" value="selenium" > Selenium<br>
                <br>
                <input class="button" type="submit" id="btnTest" onclick="openDialog()" value="Test" />
            
            </form>
            
        </div>
    </article>
    <!-- Article 1 end -->
<div id="card"></div>
 <!-- Closing the #page section -->
  
</section>
</body>
<%@include file='template/footer.html'%>
</html>