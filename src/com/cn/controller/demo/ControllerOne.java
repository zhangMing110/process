package com.cn.controller.demo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.entity.EasyUIData;
import com.cn.entity.Person;
import com.cn.entity.User;
import com.cn.service.SelectAll;
import com.cn.util.MD5Util;

@Controller
public class ControllerOne {
	@Resource(name="all")
	SelectAll sa;
	@RequestMapping("SelectAll.do")
	public ModelAndView select(){
		ModelAndView mo = new ModelAndView();
		List<Person> list = sa.select();
		mo.setViewName("selectAll");
		mo.addObject("findAll", list);
		return mo;
	}
	
	
	@RequestMapping("SelectOther.do")
	public @ResponseBody EasyUIData OtheSelect(){
		EasyUIData easyUI = new EasyUIData();
		List<Map<String ,Object>> list = new ArrayList<Map<String,Object>>();
		HashMap<String,Object> stuMap = new HashMap<String,Object>();
		stuMap.put("xuehao", 9527);
		stuMap.put("name", "小强");
		list.add(stuMap);
		
		HashMap<String,Object> stuMap01 = new HashMap<String,Object>();
		stuMap01.put("xuehao", 3306);
		stuMap01.put("name", "大强");
		list.add(stuMap01);
		HashMap<String,Object> hmap = new HashMap<String ,Object>();
		hmap.put("id", 1);
		hmap.put("text", "photo");
		
		easyUI.setTotal(list.size());
		easyUI.setRows(list);
		easyUI.setChildern(hmap);
		return easyUI;
	}
	
	@RequestMapping("/query.do")
	public @ResponseBody HashMap<String ,Object> queryOne(){
		HashMap<String,Object> easyUI= new HashMap<String,Object>();
		List<Person> dataList = sa.select();
		easyUI.put("total", dataList.size());
		easyUI.put("rows", dataList);
		return easyUI;
	}
	@RequestMapping("One.do")
	public @ResponseBody ModelAndView search(){
		ModelAndView mo = new ModelAndView();
		//List<Person> list = sa.select();
		mo.setViewName("show");
		//mo.addObject("data", list);
		//Map<String,Object> map = new HashMap<String, Object>();
		//map.put("total", list.size());
		//map.put("rows", list);
		return mo;
	}
	@RequestMapping("two.do")
	public ModelAndView add(Person per){
		ModelAndView mo = new ModelAndView();
		int num = sa.add(per);
		mo.setViewName("index");
		System.out.println(num);
		return mo;
	}
	@RequestMapping("delete")
	public ModelAndView del(String name){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("index");
		sa.delete(name);
		System.out.println(name);
		return mo;
	}
	@RequestMapping("update")
	public ModelAndView up(Person p){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("index");
		sa.change(p);
		System.out.println(p);
		return mo;
	}
	@RequestMapping("login")
	public @ResponseBody HashMap<String,Object>  login(HttpSession session,User user){
		session.setAttribute("name", user.getName());
		String MD5ps = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
		User use = sa.findOne(user);
//		System.out.println(user.getName());
//		System.out.println(user.getPassword());
		boolean loginSeccFlg = false;
		if(use != null){
			String dbname = use.getName();
			String dbpass = use.getPassword();
			if(user.getName().equals(dbname)&&MD5ps.equals(dbpass)){
				loginSeccFlg = true;
			} 
		}
		
		 HashMap<String,Object>  result = new HashMap<String, Object>();
		 result.put("loginSucc", loginSeccFlg);
		//mo.setViewName("Login");
		//mo.setViewName("index");
		
		
		return result;
	}
//	@RequestMapping("selectOneUser")
//	public ModelAndView getOne(String name){
//		ModelAndView mo = new ModelAndView();
//		String MD5ps = MD5Util.MD5Encode(us.getPassword(), "UTF-8");
//		us.setPassword(MD5ps);
//		User dbName = sa.findOne(name);
//		if(name.equals(dbName)){
//			mo.setViewName("index");
//		}
//		mo.setViewName("Login");
//		return mo;
//	}
	@RequestMapping("insertOneUser")
	public ModelAndView insertUser(User user){
		ModelAndView mo = new ModelAndView();
		String MD5ps = MD5Util.MD5Encode(user.getPassword(), "UTF-8");
		user.setPassword(MD5ps);
		int num = sa.add(user);
		mo.setViewName("Login");
		System.out.println("添加数量:"+num);
		return mo;
	}
	@RequestMapping("updateOneUser")
	public ModelAndView updateUser(User user){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("Login");
		int num = sa.change(user);
		System.out.println("更新数量:"+num);
		return mo;
	}
	@RequestMapping("deleteOneUser")
	public ModelAndView deleteUser(String name){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("Login");
		sa.drop(name);
		return mo;
	}
}
