package com.emp_auth.model;
import java.io.Serializable;

public class EmpAuthVO implements Serializable{
	private String emp_id;
	private String func_id;
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getFunc_id() {
		return func_id;
	}
	public void setFunc_id(String func_id) {
		this.func_id = func_id;
	}

}
