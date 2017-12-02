package com.cn.entity;

public class Person {
	private String name;
	private int age;
	private String addrs;
	private String diploma;
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the addrs
	 */
	public String getAddrs() {
		return addrs;
	}
	/**
	 * @param addrs the addrs to set
	 */
	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	/**
	 * @return the diploma
	 */
	public String getDiploma() {
		return diploma;
	}
	/**
	 * @param diploma the diploma to set
	 */
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "person [name=" + name + ", age=" + age + ", addrs=" + addrs
				+ ", diploma=" + diploma + "]";
	}
	
}
