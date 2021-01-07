<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/jsp/fragments/head.jspf" %>
    <title>Web Demo</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/fragments/navbar.jsp"/>	
	</header>
	<main>
        <div class="container py-5">
            <div class="card col-md-10 col-lg-7">
                <div class="card-body text-center">
                    <h1 class="card-title">Web Demo</h1>
                    <img class="rounded-circle mt-2" src="resources/img/avatar/${avatar}" width="150" height="150" alt="${avatar}"/>
                    <!-- AVATAR FORM -->
                    <div class="row">
                        <div class="col-10">
                            <form id="changeAvatarForm" class="d-flex" action="change" method="post">
                                <div class="col-4">
                                    <label class="col-form-label"><b>Elegir Avatar</b></label>
                                 </div>
                                <div class="col">
                                    <select id="changeAvatar" class="form-select" name="avatar">
                                        <c:forEach var="imagen" items="${imagenes}">
											<c:set var="nombre" value="${fn:substringBefore(imagen, '.')}"/>
											<c:choose>
												<c:when test="${imagen eq avatar}">
													<option value="${imagen}" selected>${nombre}</option>
												</c:when>
												<c:otherwise>
													<option value="${imagen}">${nombre}</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
                                    </select>
                                </div>
                            </form>
                        </div>
                        <div class="col-2">
                            <form id="deleteAvatarForm" action="delete" method="post">
                                <input type="hidden" name="imagen" value="${avatar}"/>
                                <button type="submit" class="btn btn-small btn-danger"><i class="fas fa-eraser"></i></button>
                            </form>
                        </div>
                    </div>
                    <!-- /AVATAR FORM -->
                    <!-- UPLOAD FORM -->
                    <div class="row">
                        <form id="uploadForm" action="upload" method="post" enctype="multipart/form-data">
                            <div class="col-10 ps-3">
                                <label class="form-label"><b>Subir imagen</b></label>
                                <input id="uploadAvatar" class="form-control" type="file"  name="image" accept="image/*">
                            </div>
                            <div class="col-2">
                                <button type="submit" class="btn btn-small btn-primary"><i class="fas fa-upload"></i></button>
                            </div>
                        </form>
                    </div>
                    <!-- /UPLOAD FORM -->
                    <!-- FEEDBACK MESSAGE -->
					<c:if test="${not empty mensaje}">
						<div class="alert ${bsClass} alert-dismissible fade show mt-4" role="alert">${mensaje}
						  	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					</c:if>
					<!-- /FEEDBACK MESSAGE -->
                    <!-- PREVIEW-->
                    <div class="row my-3">
                        <label id="preview"></label>
                    </div>
                    <!-- /PREVIEW-->
                </div>
            </div>
        </div>
    </main>
    <footer class="mb-5">
        <jsp:include page="/WEB-INF/jsp/fragments/footer.jsp"/>
    </footer>
    <script type="text/javascript" src="<c:url value="resources/js/main.js"/>"></script>
</body>
</html>