<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="icon" type="image/x-icon" href="/images/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>&#9618;&#9618;&#9618;&#9618;&#9618;&#9618;&#9618;&#9618;&#9618;&#9618;</title>
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.min.js"></script>

<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">

<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="Material Design Lite">

<!-- Tile icon for Win8 (144x144 + tile color) -->
<meta name="msapplication-TileImage"
	content="/images/touch/ms-touch-icon-144x144-precomposed.png">
<meta name="msapplication-TileColor" content="#3372DF">

<link href="<c:url value='/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.4/material.red-purple.min.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,500,300,100,700,900'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/css/application.css">
</head>
<body>
	<div
		class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header is-small-screen">
		<header class="mdl-layout__header">
			<div class="mdl-layout__header-row">
				<div class="mdl-layout-spacer"></div>
				<!-- Search-->

				<li class="mdl-list__item mdl-list__item--two-line"><span
					class="mdl-list__item-primary-content"> <a href="logout">
							<i
							class="material-icons mdl-list__item-icon text-color--secondary">exit_to_app</i>
					</a>
				</span></li>


			</div>
		</header>

		<div class="mdl-layout__drawer">
			<header>
				<img width="20%" src="/images/bitskull.jpg">
			</header>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link mdl -navigation__link--current"
					href="../user/index"> <i class="material-icons"
					role="presentation">dashboard</i> Dashboard
				</a> <a class="mdl-navigation__link" href="../user/showbot"> <i
					class="material-icons" role="presentation">person</i> Bot List
				</a> <a class="mdl-navigation__link" href="../user/attack"> <i
					class="material-icons" role="presentation">&#9760;</i> Attack
				</a>

				<div class="mdl-layout-spacer"></div>
				<a class="mdl-navigation__link"
					href="https://github.com/xXCiccioXx/BOTNET"> <i
					class="material-icons" role="presentation">link</i> GitHub
				</a>
			</nav>

		</div>







		<div id="mainWrapper" align="center">
			<div class="general-container">
				<div class="general-card">
					<div class="general-form">

						<div>
							<p>Choose an attack:</p>
						</div>

						<!-- 						<form class="lefto"> -->
						<!-- 							<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" -->
						<!-- 								for="at_1"> <input type="radio" name="attack" id="at_1" -->
						<!-- 								value="at_1" class="mdl-radio__button" -->
						<!-- 								onClick="document.forms[0].sendattack.disabled = false" /> <span -->
						<!-- 								class="mdl-radio__label">Syn Flood</span> -->
						<!-- 							</label><br> <label -->
						<!-- 								class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="at_2"> -->
						<!-- 								<input type="radio" name="attack" id="at_2" value="at_2" -->
						<!-- 								class="mdl-radio__button" -->
						<!-- 								onClick="document.forms[0].sendattack.disabled = false" /> <span -->
						<!-- 								class="mdl-radio__label">Spam Everything</span> -->
						<!-- 							</label><br> <label -->
						<!-- 								class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="at_3"> -->
						<!-- 								<input type="radio" name="attack" id="at_3" value="at_3" -->
						<!-- 								class="mdl-radio__button" -->
						<!-- 								onClick="document.forms[0].sendattack.disabled = false" /> <span -->
						<!-- 								class="mdl-radio__label">Kill Someone via USB Explosion</span> -->
						<!-- 							</label><br> <br> -->
						<!-- 							<button type="submit" name="sendattack" value="SendAttack" -->
						<!-- 								disabled>send attack</button> -->
						<!-- 						</form> -->




						<!-- 						<table> -->
						<!-- 							<tbody> -->
						<%-- 								<c:forEach items="${listAttack}" var="attack"> --%>
						<%-- 									<form:form method="POST" modelAttribute="target"></td> --%>

						<%-- 										<td><form:input type="text" path="typeAttack" --%>
						<%-- 												id="typeAttack" class="hiddbox" --%>
						<%-- 											/><span class="highlight"></span><span --%>
						<!-- 											class="bar"></span></td> -->

						<%-- 										<td><form:input type="text" path="ipDest" --%>
						<%-- 												id="ipDest" class="hiddbox" /><span class="highlight"></span><span --%>
						<!-- 											class="bar"></span></td> -->

						<%-- 										<td><form:input type="text" path="portDest" --%>
						<%-- 												id="portDest" class="hiddbox" /><span class="highlight"></span><span --%>
						<!-- 											class="bar"></span></td> -->

						<%-- 										<td><form:input type="text" path="timeToAttack" --%>
						<%-- 												id="timeToAttack" class="hiddbox" /><span class="highlight"></span><span --%>
						<!-- 											class="bar"></span></td> -->
						<%-- 										<td></form:form></td> --%>

						<!-- 										<tr> -->
						<!-- 											<button type="submit" value="Update">Send to BiTViR -->
						<!-- 												Bot</button> -->
						<!-- 										</tr> -->

						<!-- 									</tr> -->
						<%-- 								</c:forEach> --%>
						<!-- 							</tbody> -->
						<!-- 						</table> -->



						<div class="generic-container">
							<form:form method="POST" modelAttribute="target">
								<div>
									<form:select path="typeAttack" items="${listAttack}" multiple="true"
										itemValue="typeAttack" itemLabel="typeAttack" class="minimal" />
									<span class="highlight"></span>
								</div>

								<div>
									<form:input type="text" path="ipDest" id="ipDest"
										class="hiddbox" />
									<span class="highlight"></span> 
								</div>

								<div>
									<form:input type="text" path="portDest" id="portDest"
										class="hiddbox" />
									<span class="highlight"></span> 
								</div>

								<div>
									<form:input type="text" path="timeToAttack" id="timeToAttack"
										class="hiddbox" />
									<span class="highlight"></span> 
								</div>

								<div>
									<button type="submit" value="Update">Send to BiTViR
										Bot</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src="/js/d3.js"></script>
	<script src="/js/getmdl-select.min.js"></script>
	<script src="/js/material.js"></script>
	<script src="/js/nv.d3.js"></script>
	<script src="/js/widgets/employer-form/employer-form.js"></script>
	<script src="/js/widgets/line-chart/line-chart-nvd3.js"></script>
	<script src="/js/widgets/map/maps.js"></script>
	<script src="/js/widgets/pie-chart/pie-chart-nvd3.js"></script>
	<script src="/js/widgets/table/table.js"></script>
	<script src="/js/widgets/todo/todo.js"></script>

</body>
</html>