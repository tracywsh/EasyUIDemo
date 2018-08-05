package data.mapper;

import java.util.List;


import data.entity.People;




public interface DataMapper{
	
	
	/**
	 * 查询所有的人员信息
	 * @return
	 */
	List<People> selectAllPeople();
}
