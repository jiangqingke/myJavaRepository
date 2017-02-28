package com.atguigu.sssp.handler;

import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.sssp.entity.User;
import com.atguigu.sssp.service.UserService;

@Controller
public class UserHandler {
	
	@Autowired
	UserService userService;
	
//	@RequestMapping(value="/users",method=RequestMethod.GET)
//	public String getUsers(Map<String,Object> map){
//		map.put("users", userService.getAll());
//		return "userList";
//	}
	
	@ResponseBody
	@RequestMapping(value="/saveUser", method = {RequestMethod.POST })
	public User saveUser(@RequestBody User user){
		user.setCreateTime(new Date());
		user = userService.save(user);
		return user;
	}
	
	/**
	 * 根据ID，查询user
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/user")
	public User getUser(@RequestParam(value="id",required=true) Integer id){
		
		return userService.getUser(id);
	}
	
	/**
	 * 获取所有用户（分页）
	 * @param pageNoStr
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/users")
	public Collection<User> getUsersPage(@RequestParam(value="pageNo",required=false,defaultValue="1") String pageNoStr){
		int pageNo = 1;
		//验证pageNo
		try{
			pageNo = Integer.parseInt(pageNoStr);
			if(pageNo < 1)
				pageNo = 1;
		}catch (Exception e) {
		}
		Page<User> page =  userService.getUsersPage(pageNo, 10);
		return page.getContent();
	}
		
}
