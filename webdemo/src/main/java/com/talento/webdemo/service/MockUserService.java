package com.talento.webdemo.service;

import java.util.HashSet;
import java.util.Set;

import com.talento.webdemo.domain.Usuario;

public class MockUserService implements UserService {
	
	private static Set<Usuario> usuarios;
	
	static {
		usuarios = new HashSet<>();
		usuarios.add(new Usuario("ariel", "1234"));
		usuarios.add(new Usuario("admin", "admin"));
		usuarios.add(new Usuario("aarmijo", "cg331x"));
	}

	@Override
	public Set<Usuario> usuarios() {
		return usuarios;
	}

	@Override
	public Usuario getUser(String userName) {
		return usuarios.stream().filter(u -> u.getUserName().equals(userName)).findFirst().orElse(null);
	}

	@Override
	public void addUser(Usuario user) {
		usuarios.add(user);
	}

}
