package com.talento.webdemo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.talento.webdemo.domain.Usuario;
import com.talento.webdemo.service.MockUserService;
import com.talento.webdemo.service.UserService;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static Log logger = LogFactory.getLog(HomeServlet.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("usuario");
		String password = request.getParameter("password");
		Usuario usuario = new Usuario(userName, password);
		UserService servicio = new MockUserService();
		logger.debug("Usuario observado: " + usuario);
		logger.debug("Usuario real:  " + servicio.getUser(userName));
		String mensaje, page, bsClass;
		if (usuario.equals(servicio.getUser(userName))) {
			HttpSession session = request.getSession();
			session.setAttribute("usuario", userName);
			mensaje = "¡Bienvenido " + userName + "!";
			page = "/WEB-INF/jsp/index.jsp";
			bsClass="alert-info";
		} else {
			mensaje = "Usuario y/o contraseña incorrectos.";
			page = "/WEB-INF/jsp/login.jsp";
			bsClass="alert-danger";
		}
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("bsClass", bsClass);
		request.getRequestDispatcher(page).forward(request, response);
	}

}
