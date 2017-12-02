package com.cn.entity;

import java.util.List;
import java.util.Map;

public class EasyUIData {
	private int total;
	private List<Map<String,Object>> rows;
	private Map<String,Object> childern;
	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}
	/**
	 * @return the rows
	 */
	public List<Map<String, Object>> getRows() {
		return rows;
	}
	/**
	 * @param rows the rows to set
	 */
	public void setRows(List<Map<String, Object>> rows) {
		this.rows = rows;
	}
	/**
	 * @return the childern
	 */
	public Map<String, Object> getChildern() {
		return childern;
	}
	/**
	 * @param childern the childern to set
	 */
	public void setChildern(Map<String, Object> childern) {
		this.childern = childern;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "EasyUIData [total=" + total + ", rows=" + rows + ", childern="
				+ childern + "]";
	}
	
	
}
