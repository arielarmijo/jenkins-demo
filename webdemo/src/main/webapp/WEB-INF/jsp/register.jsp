<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/fragments/head.jspf" %>
    <link rel="stylesheet" type="text/css" href="resources/css/login.css"/>
	<title>Registro</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/fragments/navbar.jsp"/>	
	</header>
	<main>
		<div class="container py-5">
			<div class="card col-md-10 col-lg-7">
				<div class="card-body text-center">
					<i class="far fa-user-circle"></i>
					<h1 class="mt-2 mb-3">Registro</h1>
					<c:if test="${not empty mensaje}">
						<div class="alert ${bsClass} alert-dismissible fade show mt-4 mx-auto w-75" role="alert">${mensaje}
						  	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					</c:if>
					<form class="col-md-8 mx-auto" action="user" method="post">
						<div class="mb-3">
							<label class="form-label float-start">Usuario</label>
							<input class="form-control" type="text" name="usuario" placeholder="Ingrese usuario"/>
						</div>
						<div class="mb-2">
							<label class="form-label float-start">Contraseña</label>
							<input class="form-control" type="password" name="pwd1" placeholder="Ingrese contraseña"/>
						</div>
						<div class="mb-2">
							<input class="form-control" type="password" name="pwd2" placeholder="Confirme contraseña"/>
						</div>
						<div class="my-3">
							<input class="btn" type="submit" value="Registrarse"/>
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