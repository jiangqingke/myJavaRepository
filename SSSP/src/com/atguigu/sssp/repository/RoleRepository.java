package com.atguigu.sssp.repository;

import java.util.List;

import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;

import com.atguigu.sssp.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

	@QueryHints({@QueryHint(name=org.hibernate.ejb.QueryHints.HINT_CACHEABLE,value="true")})
	@Query("FROM Role r")
	List<Role> getAll();
}
