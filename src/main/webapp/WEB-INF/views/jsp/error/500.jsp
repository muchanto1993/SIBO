<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>SIBO | Error 500</title>
<spring:url value="resources/assets/img/favicon.ico" var="faviconICO" />
<link rel="icon" type="image/x-icon" href="${faviconICO}" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
<spring:url value="resources/bootstrap/css/bootstrap.min.css" var="bootstrapMINCSS" />
<link href="${bootstrapMINCSS}" rel="stylesheet" type="text/css" />
<spring:url value="resources/assets/css/plugins.css" var="pluginsCSS" />
<link href="${pluginsCSS}" rel="stylesheet" type="text/
css" />
<spring:url value="resources/assets/css/pages/error/style-500.css" var="style500CSS" />
<link href="${style500CSS}" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
</head>
<body class="error500 text-center">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 mr-auto mt-5 text-md-left text-center">
				<a href="" class="ml-md-5"> <spring:url value="/resources/assets/img/90x90.jpg" var="iconJPG" /> <img alt="image-500" src="${iconJPG}" class="theme-logo">
				</a>
			</div>
		</div>
	</div>
	<div class="container-fluid error-content">
		<div class="">
			<h1 class="error-number">500</h1>
			<p class="mini-text">Ooops!</p>
			<p class="error-text">Internal Server Error!</p>
			<a href="./" class="btn btn-secondary mt-5">Go Back</a>
		</div>
	</div>
	<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
	<spring:url value="/resources/assets/js/libs/jquery-3.1.1.min.js" var="jquery311MINJS" />
	<script src="${jquery311MINJS}"></script>
	<spring:url value="/resources/bootstrap/js/popper.min.js" var="popperMINJS" />
	<script src="${popperMINJS}"></script>
	<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapMINJS" />
	<script src="${bootstrapMINJS}"></script>
	<!-- END GLOBAL MANDATORY SCRIPTS -->
</body>
</html>