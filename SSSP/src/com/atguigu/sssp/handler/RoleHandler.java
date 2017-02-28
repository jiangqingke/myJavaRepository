package com.atguigu.sssp.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.sssp.entity.Role;
import com.atguigu.sssp.service.RoleService;

@Controller
public class RoleHandler {
	
	@Autowired
	public RoleService roleService;
	
	@ResponseBody
	@RequestMapping(value="/roles",method=RequestMethod.POST)
	public List<Role> getDepartments(){
		return roleService.getAll();
	}
}
