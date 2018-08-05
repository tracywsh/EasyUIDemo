package root.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import data.entity.People;
import data.entity.User;
import data.mapper.DataMapper;
import data.mapper.UserMapper;

@Lazy
@Service
public class UserDao {
	
	@Autowired
	private UserMapper userMapper;
	
	public List<User> getAllUsers(){
		return userMapper.getAllUsers();
	}
}
