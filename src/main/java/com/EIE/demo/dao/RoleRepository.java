package com.EIE.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.EIE.demo.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

	@Query("from Role   ")
	public List<Role> getAllRole ();

	@Query("select r from Role r")
	public Role getRoles();

}


