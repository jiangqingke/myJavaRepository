package com.atguigu.sssp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.sssp.entity.Role;
import com.atguigu.sssp.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	private RoleRepository roleRepository;
	
	public List<Role> getAll(){
		List<Role> departments = roleRepository.getAll();
		return departments;
	}
}
