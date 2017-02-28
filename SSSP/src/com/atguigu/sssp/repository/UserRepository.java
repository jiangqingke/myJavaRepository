package com.atguigu.sssp.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;

import com.atguigu.sssp.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	@QueryHints({@QueryHint(name=org.hibernate.ejb.QueryHints.HINT_CACHEABLE,value="true")})
	@Query(value="FROM User u")
	public List<User> getAll();
	
	@Query(value="FROM User u where u.id=?1")
	public List<User> getUser(Integer id);
	
	public User getUserById(Integer id);
}
