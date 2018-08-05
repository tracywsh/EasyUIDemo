package web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import data.entity.People;
import root.dao.PeopleDao;

@Controller
@RequestMapping("/people")
public class PeopleController{
	
	@Autowired
	private PeopleDao peopleDao;
	
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String home(){
		return "home";
	}
	

	
	
}
