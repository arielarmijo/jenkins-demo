<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/fragments/head.jspf" %>
	<title>Usuario</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/fragments/navbar.jsp"/>	
	</header>
	<main>
		<div class="container py-5">
			<div class="card col-md-10 col-lg-7">
				<div class="card-body text-center">
					<img class="rounded-circle mt-2 mb-3" src="resources/img/avatar/${avatar}" width="150" height="150" alt="${avatar}"/>
					<div class="mx-auto col-8">
						<p>${mensaje}</p>
						<div class="my-2">
							<input class="form-control" type="text" name="usuario" value="${usuario}" placeholder="Ingrese usuario"/>
						</div>
						<div class="mb-2">
							<input class="form-control" type="password" name="pwd1" placeholder="Ingrese contraseña"/>
						</div>
						<div class="mb-3">
							<input class="form-control" type="password" name="pwd2" placeholder="Confirme contraseña"/>
						</div>
						<button class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
						<div class="d-inline-block mx-1"></div>
						<button class="btn btn-danger" type="submit"><i class="fas fa-eraser"></i> Borrar</button>
					</div>
				</div>
			</div>
		</div>
	</main>
	<footer class="mb-5">
        <jsp:include page="/WEB-INF/jsp/fragments/footer.jsp"/>
    </footer>
</body>
</html>