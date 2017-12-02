package com.cn.dao;

import java.util.List;

import com.cn.entity.Person;
import com.cn.entity.User;

public interface messages {
	public List<Person> getAll();
	public int insert(Person person);
	public void deleteOne(String name);
	public int update(Person p);
	public User getOne(User name);
	public int insertUser(User user);
	public int updateUser(User user);
	public void deleteUser(String name);
}
