package com.nagarro.assignment5.Hrlogin.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.nagarro.assignment5.Hrlogin.model.Hr;

@Repository
public interface HrRepository extends JpaRepository<Hr, String>{
	
	@Query("SELECT n FROM Hr n WHERE n.username = ?1 AND n.pass = ?2")
	Hr findByUsernameAndPassword(String usrname,String pass);
}
