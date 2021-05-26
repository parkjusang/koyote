package com.itbank.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.employee.EmployeeDAO;

import com.itbank.working.WorkingDAO;

@Service
public class WorkListService {

	@Autowired
	private WorkingDAO dao;
	
	// 추가 
	@Autowired
	private EmployeeDAO edao;
	
	// 추가
	
	public String getTeamCount(String emp_dept) {
		
		return dao.getTeamCount(emp_dept);
	}
	// 추가

	public ArrayList<String> getHelloTeam(String emp_dept) {
		
		return edao.getHelloTeam(emp_dept);
	}

}
