<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-dark">
	<div class="container-fluid mx-2">
		<a class="navbar-brand" href="<c:url value="/"/>">
			<img src="resources/img/logo.png" alt="logo.png" width="50" height="50">
		</a>
		<div class="link-container">
			<ul class="navbar-nav flex-row">
				<c:if test="${empty usuario}">
					<li class="nav-item">
						<a class="nav-link" href="login"><i class="fas fa-sign-in-alt"></i> Login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="register"><i class="far fa-user-circle"></i> Sign in</a>
					</li>
				</c:if>
				<c:if test="${not empty usuario}">
					<li class="nav-item">
						<a class="nav-link" href="user"><i class="far fa-user-circle"></i> ${usuario}</a>
					</li>
					<li class="nav-item">
						<form action="logout" method="post">
							<button class="btn nav-link" type="submit">
								<i class="fas fa-sign-out-alt"></i> Logout
							</button>
						</form>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>
