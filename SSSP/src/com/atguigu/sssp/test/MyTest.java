package com.atguigu.sssp.test;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.ejb.QueryHints;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.atguigu.sssp.entity.Role;
import com.atguigu.sssp.service.RoleService;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public class MyTest {
	ApplicationContext ac;
	ComboPooledDataSource dataSource;
	RoleService roleService;
	EntityManagerFactory entityManagerFactory;
	{
		 ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		 roleService = ac.getBean(RoleService.class);
		 entityManagerFactory = (EntityManagerFactory) ac.getBean("entityManagerFactory");
	}
	
	/**
	 * 测试二级缓存
	 */
	@Test
	public void testTwoLevelCache(){
		roleService.getAll();
		roleService.getAll();
	}
	
	@SuppressWarnings("unchecked")
	@Test
	public void testJpaSecondLevelCache(){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		String jpql = "FROM Role d";
		Query query = entityManager.createQuery(jpql);
		List<Role> roles = query.setHint(QueryHints.HINT_CACHEABLE, "true").getResultList();
		entityManager.close();
		
		entityManager = entityManagerFactory.createEntityManager();
		jpql = "FROM Role d";
		query = entityManager.createQuery(jpql);
		roles = query.setHint(QueryHints.HINT_CACHEABLE, "true").getResultList();
		entityManager.close();
		
		
	}
	
	@Test
	public void testDataSource() throws SQLException {
		dataSource = (ComboPooledDataSource) ac.getBean("dataSource");
		System.out.println(dataSource.getConnection());
		
	}

}
