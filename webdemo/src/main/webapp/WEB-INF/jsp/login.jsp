<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/fragments/head.jspf" %>
    <link rel="stylesheet" type="text/css" href="resources/css/login.css"/>
	<title>Login</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/fragments/navbar.jsp"/>	
	</header>
	<main>
		<div class="container py-5">
			<div class="card col-md-10 col-lg-7">
				<div class="card-body text-center">
					<i class="fas fa-sign-in-alt"></i>
					<h1>Login</h1>
					<c:if test="${not empty mensaje}">
						<div class="alert ${bsClass} alert-dismissible fade show mt-4 mx-auto w-75" role="alert">${mensaje}
						  	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					</c:if>
					<form class="col-md-8 mx-auto mt-4 mb-3" action="login" method="post">
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1"><i class="	fas fa-user-alt"></i></span>
						  	<input type="text" class="form-control" name="usuario" placeholder="Nombre de usuario"/>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1"><i class="	fas fa-key"></i></span>
						  	<input type="password" class="form-control" name="password" placeholder="Contraseña"/>
						</div>
						<div>
							<input class="btn" type="submit" value="Iniciar sesión"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>
	<footer class="mb-5">
        <jsp:include page="/WEB-INF/jsp/fragments/footer.jsp"/>
    </footer>
</body>
</html>