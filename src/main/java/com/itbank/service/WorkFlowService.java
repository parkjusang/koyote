package com.itbank.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.employee.EmployeeDTO;
import com.itbank.workFlow.WflowAnnualDTO;
import com.itbank.workFlow.WFlowDAO;
import com.itbank.workFlow.WFlowEquiDTO;

@Service
public class WorkFlowService {
	
	@Autowired
	private WFlowDAO workDAO;

	
	public int insertEqui(WFlowEquiDTO dto) {
		return workDAO.insertEquiList(dto);
	}
	
	public int insertAnnual(WflowAnnualDTO dto) {
		return workDAO.insertAnnual(dto);
	}
	
	public void getDept(String dept,HttpSession session) {
		
		int i = 0;
		List<EmployeeDTO> deptList = workDAO.getDeptList(dept);
		if(deptList != null) {
			for(EmployeeDTO list : deptList) {
				i++;
			}
			String num = Integer.toString(i);
			session.setAttribute("deptList", deptList);
			session.setAttribute("deptCount", num);
		}
	
	}
	
	

}
