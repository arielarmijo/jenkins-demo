package com.talento.webdemo.service;

import java.util.Set;

import com.talento.webdemo.domain.Usuario;

public interface UserService {
	
	Usuario getUser(String userName);
	void addUser(Usuario user);
	Set<Usuario> usuarios();

}
