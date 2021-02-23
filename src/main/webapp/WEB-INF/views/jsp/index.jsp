<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>SIBO | Dashboard</title>
<link rel="icon" type="image/x-icon" href="resources/assets/img/favicon.ico" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
<spring:url value="resources/bootstrap/css/bootstrap.min.css" var="bootstrapMINCSS" />
<link href="${bootstrapMINCSS}" rel="stylesheet" type="text/css" />
<spring:url value="resources/assets/css/plugins.css" var="pluginsCSS" />
<link href="${pluginsCSS}" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM STYLES -->
<!-- BEGIN Libary for Dashboard Page -->
<%-- <spring:url value="resources/assets/css/scrollspyNav.css" var="scrollspynavCSS" />
<link href="${scrollspynavCSS}" rel="stylesheet" type="text/css" />
<spring:url value="resources/plugins/apex/apexcharts.css" var="apexchartsCSS" />
<link href="${apexchartsCSS}" rel="stylesheet" type="text/css">
<spring:url value="resources/assets/css/widgets/modules-widgets.css" var="moduleswidgetsCSS" />
<link href="${moduleswidgetsCSS}" rel="stylesheet" type="text/css"> --%>
<!-- END Libary for Dashboard Page -->
<!-- BEGIN Libary for Data Tables Page -->
<spring:url value="resources/plugins/table/datatable/datatables.css" var="datatablesCSS" />
<link href="${datatablesCSS}" rel="stylesheet" type="text/css">
<spring:url value="resources/plugins/table/datatable/dt-global_style.css" var="dtglobalstyleCSS" />
<link href="${dtglobalstyleCSS}" rel="stylesheet" type="text/css">
<!-- END Libary for Data Tables Page -->
<!-- END PAGE LEVEL PLUGINS/CUSTOM STYLES -->
</head>
<body class="alt-menu sidebar-noneoverflow">
	<!-- BEGIN NAVBAR -->
	<%@ include file="/WEB-INF/views/jsp/include/navbar.jsp"%>
	<!-- END NAVBAR  -->
	<!-- BEGIN MAIN CONTAINER  -->
	<div class="main-container" id="container">
		<!-- BEGIN OVERLAY  -->
		<div class="overlay"></div>
		<div class="cs-overlay"></div>
		<div class="search-overlay"></div>
		<!-- END OVERLAY -->
		<!-- BEGIN SIDEBAR  -->
		<div class="sidebar-wrapper sidebar-theme">
			<nav id="sidebar">
				<%@ include file="/WEB-INF/views/jsp/include/sidebar.jsp"%>
			</nav>
		</div>
		<!-- END SIDEBAR  -->
		<!-- BEGIN CONTENT AREA  -->
		<div id="content" class="main-content">
			<div class="layout-px-spacing">
				<jsp:include page="/WEB-INF/views/jsp/${content}" />
				<!-- FOOTER AREA -->
				<%@ include file="/WEB-INF/views/jsp/include/footer.jsp"%>
				<!-- FOOTER AREA -->
			</div>
		</div>
		<!-- END CONTENT AREA  -->
	</div>
	<!-- END MAIN CONTAINER -->
	<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
	<spring:url value="resources/assets/js/libs/jquery-3.1.1.min.js" var="jquery311MINJS" />
	<script src="${jquery311MINJS}"></script>
	<spring:url value="resources/bootstrap/js/popper.min.js" var="popperMINJS" />
	<script src="${popperMINJS}"></script>
	<spring:url value="resources/bootstrap/js/bootstrap.min.js" var="bootstrapMINJS" />
	<script src="${bootstrapMINJS}"></script>
	<spring:url value="resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js" var="perfectscrollbarMINJS" />
	<script src="${perfectscrollbarMINJS}"></script>
	<spring:url value="resources/assets/js/app.js" var="appJS" />
	<script src="${appJS}"></script>
	<script>
		$(document).ready(function() {
			App.init();
		});
	</script>
	<spring:url value="resources/assets/js/custom.js" var="customJS" />
	<script src="${customJS}"></script>
	<!-- END GLOBAL MANDATORY SCRIPTS -->
	<!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
	<!-- BEGIN Libary for Dashboard Page -->
	<%-- <spring:url value="resources/assets/js/scrollspyNav.js" var="scrollspynavJS" />
	<script src="${scrollspynavJS}"></script>
	<spring:url value="resources/plugins/apex/apexcharts.min.js" var="apexchartsMINJS" />
	<script src="${apexchartsMINJS}"></script>
	<spring:url value="resources/plugins/apex/custom-apexcharts.js" var="customapexchartsJS" />
	<script src="${customapexchartsJS}"></script>
	<spring:url value="resources/assets/js/widgets/modules-widgets.js" var="moduleswidgetsJS" />
	<script src="${moduleswidgetsJS}"></script> --%>
	<!-- END Libary for Dashboard Page -->
	<!-- BEGIN Libary for Data Tables Page -->
	<spring:url value="resources/plugins/table/datatable/datatables.js" var="datatablesJS" />
	<script src="${datatablesJS}"></script>
	<script>
		$('#zero-config')
				.DataTable(
						{
							"oLanguage" : {
								"oPaginate" : {
									"sPrevious" : '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>',
									"sNext" : '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>'
								},
								"sInfo" : "Showing page _PAGE_ of _PAGES_",
								"sSearch" : '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
								"sSearchPlaceholder" : "Search...",
								"sLengthMenu" : "Results :  _MENU_",
							},
							"stripeClasses" : [],
							"lengthMenu" : [ 7, 10, 20, 50 ],
							"pageLength" : 7
						});
	</script>
	<!-- END Libary for Data Tables Page -->
	<!-- END PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
</body>
</html>