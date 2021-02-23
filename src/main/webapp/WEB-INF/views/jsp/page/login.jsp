<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
<title>SIBO | Login</title>
<spring:url value="/resources/assets/img/favicon.ico" var="faviconICO" />
<link rel="icon" type="image/x-icon" href="${faviconICO}" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapMINCSS" />
<link href="${bootstrapMINCSS}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/css/plugins.css" var="pluginsCSS" />
<link href="${pluginsCSS}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/css/authentication/form-1.css" var="form1CSS" />
<link href="${form1CSS}" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<spring:url value="/resources/assets/css/forms/theme-checkbox-radio.css" var="themecheckboxradioCSS" />
<link rel="stylesheet" type="text/css" href="${themecheckboxradioCSS}">
<spring:url value="/resources/assets/css/forms/switches.css" var="switchesCSS" />
<link rel="stylesheet" type="text/css" href="${switchesCSS}">
</head>
<body class="form">
	<div class="form-container">
		<div class="form-form">
			<div class="form-form-wrap">
				<div class="form-container">
					<div class="form-content">
						<h1 class="">
							Log In to <a href="index.html"><span class="brand-name">SIBO</span></a>
						</h1>
						<form class="text-left">
							<div class="form">
								<div id="username-field" class="field-wrapper input">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
										class="feather feather-user">
										<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
										<circle cx="12" cy="7" r="4"></circle></svg>
									<input id="username" name="username" type="text" class="form-control" placeholder="Username">
								</div>
								<div id="password-field" class="field-wrapper input mb-2">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
										class="feather feather-lock">
										<rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
										<path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
									<input id="password" name="password" type="password" class="form-control" placeholder="Password">
								</div>
								<div class="d-sm-flex justify-content-between">
									<div class="field-wrapper toggle-pass">
										<p class="d-inline-block">Show Password</p>
										<label class="switch s-primary"> <input type="checkbox" id="toggle-password" class="d-none"> <span class="slider round"></span>
										</label>
									</div>
									<div class="field-wrapper">
										<button type="submit" class="btn btn-primary" value="">Log In</button>
									</div>
								</div>
								<div class="field-wrapper text-center keep-logged-in">
									<div class="n-chk new-checkbox checkbox-outline-primary">
										<label class="new-control new-checkbox checkbox-outline-primary"> <input type="checkbox" class="new-control-input"> <span class="new-control-indicator"></span>Keep me logged
											in
										</label>
									</div>
								</div>
								<div class="field-wrapper">
									<a href="auth_pass_recovery.html" class="forgot-pass-link">Forgot Password?</a>
								</div>
							</div>
						</form>
						<p class="terms-conditions">
							© 2020 All Rights Reserved. <a href="">SIBO</a> is a product of GigsSoft. <a href="javascript:void(0);">Cookie Preferences</a>, <a href="javascript:void(0);">Privacy</a>, and <a
								href="javascript:void(0);">Terms</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="form-image">
			<div class="l-image"></div>
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
	<spring:url value="/resources/assets/js/authentication/form-1.js" var="form1JS" />
	<script src="${form1JS}"></script>
</body>
</html>