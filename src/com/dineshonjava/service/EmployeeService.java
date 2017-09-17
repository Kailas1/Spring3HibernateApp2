package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.model.Employee;

public interface EmployeeService {
	
	public void addEmployee(Employee employee);

	public List<Employee> listEmployeess();
	
	public Employee getEmployee(int jid);
	
	public void deleteEmployee(Employee employee);
}
