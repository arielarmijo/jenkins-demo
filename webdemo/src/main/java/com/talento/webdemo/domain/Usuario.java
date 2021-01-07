package com.talento.webdemo.domain;

public class Usuario {

	private String userName;
	private String password;
	
	
	public Usuario() {
	}


	public Usuario(String usuario, String password) {
		this.userName = usuario;
		this.password = password;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String usuario) {
		this.userName = usuario;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Usuario [usuario=" + userName + ", password=" + password + "]";
	}
	
}
