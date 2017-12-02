package com.cn.achieve;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.dao.messages;
import com.cn.entity.Person;
import com.cn.entity.User;
import com.cn.service.SelectAll;
@Service("all")
public class AchieveSelectAll implements SelectAll{

	@Resource
	messages me;
	
	public List<Person> select() {
		return me.getAll();
	}

	@Override
	public int add(Person person) {
		return me.insert(person);
	}

	@Override
	public void delete(String name) {
		me.deleteOne(name);
		
	}

	@Override
	public int change(Person per) {
		return me.update(per);
	}

	@Override
	public User findOne(User name) {
		return me.getOne(name);
	}

	@Override
	public int add(User user) {
		return me.insertUser(user);
	}

	@Override
	public int change(User user) {
		return me.updateUser(user);
	}

	@Override
	public void drop(String name) {
		me.deleteUser(name);
	}

}
