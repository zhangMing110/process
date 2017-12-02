package com.cn.service;

import java.util.List;

import com.cn.entity.Person;
import com.cn.entity.User;

public interface SelectAll {
	public List<Person> select();
	public int add(Person person);
	public void delete(String name);
	public int change(Person per);
	public User findOne(User name);
	public int add(User user);
	public int change(User user);
	public void drop(String name);
}
