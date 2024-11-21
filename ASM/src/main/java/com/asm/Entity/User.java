package com.asm.Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name="Users")

public class User {
	@Id
	@Column(name="id")
	String Id;
	@Column(name="password")
	String password;
	@Column(name="fullname")
	String fullname;
	@Column(name="email")
	String email;
	@Column(name="admin")
	boolean admin=false;
	@Column(name="isdelete")
	boolean isdelete=true;
	
	
	@OneToMany(mappedBy = "user")
	private List<Favorite> favorites;
	
	@OneToMany(mappedBy = "user")
	private List<Share> shares;
}
