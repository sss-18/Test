package com.nagarro.assignment5.Hrlogin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@Table(name="hr")
@NoArgsConstructor
@AllArgsConstructor
public class Hr {
	@Id
	@Column(name="username")
	private String username;
	@Column(name="pass")
	private String pass;
	
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPass() {
		return pass;
	}


	@Override
	public String toString() {
		return "Hr [username=" + username + ", password=" + pass + "]";
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public Hr() {
		// TODO Auto-generated constructor stub
	}

}
