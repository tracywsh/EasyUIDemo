package web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import data.entity.User;
import root.dao.UserDao;

@Controller
@RequestMapping("/user")
public class UserController{
	
	@Resource
	private UserDao userDao;
	
	@RequestMapping(method=RequestMethod.GET)
	public String home(){
		return "user";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public String findByPager(){
		List<User> users = userDao.getAllUsers();
		return JSON.toJSONString(users);
	}
	
	
}
