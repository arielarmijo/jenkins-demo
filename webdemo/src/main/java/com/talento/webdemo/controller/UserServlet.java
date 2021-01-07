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

@WebServlet("/user")
public class UserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static Log logger = LogFactory.getLog(UserServlet.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/jsp/user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("usuario");
		String pwd1 = request.getParameter("pwd1");
		String pwd2 = request.getParameter("pwd2");
		String mensaje;
		String bsClass = "alert-danger";
		String page = "/WEB-INF/jsp/register.jsp";
		if (userName.isEmpty() || pwd1.isEmpty() || pwd2.isEmpty()) {
			mensaje = "Complete todos los campos.";
		} else if (!pwd1.equals(pwd2)) {
			mensaje = "Las contraseñas no coinciden";
		} else {
			mensaje = "Registro exitoso.";
			bsClass = "alert-success";
			page = "/WEB-INF/jsp/index.jsp";
			Usuario usuario = new Usuario(userName, pwd1);
			UserService service = new MockUserService();
			service.addUser(usuario);
			logger.info(String.format("Usuario %s registrado.", usuario.getUserName()));
			logger.info("Usuarios:" + service.usuarios());
			HttpSession session = request.getSession();
			session.setAttribute("usuario", userName);
		}
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("bsClass", bsClass);
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}
