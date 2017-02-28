package com.atguigu.sssp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.atguigu.sssp.entity.User;
import com.atguigu.sssp.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	
	public User getUser(Integer id){
		//return userRepository.getUser(id);
		return userRepository.getUserById(id);
	}
	
	public List<User> getAll(){
		return userRepository.getAll();
	}
	
	public Page<User>  getUsersPage(int pageNo, int pageSize){
		Pageable pageable = new PageRequest(pageNo-1, pageSize);
		return userRepository.findAll(pageable);
	}
	
	public User save(User user){
		return userRepository.saveAndFlush(user);
	}
}
