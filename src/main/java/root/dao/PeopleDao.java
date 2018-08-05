package root.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import data.entity.People;
import data.mapper.DataMapper;

@Lazy
@Service
public class PeopleDao {
	
	@Autowired
	private DataMapper dataMapper;
	
	public List<People> getAllPeople(){
		return dataMapper.selectAllPeople();
	}
}
