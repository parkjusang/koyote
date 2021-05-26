package com.itbank.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.employee.EmployeeDTO;
import com.itbank.worktodo.WorktodoDAO;
import com.itbank.worktodo.WorktodoDTO;

@Service
public class WorktodoService {

	@Autowired
	WorktodoDAO dao;
	
	public List<WorktodoDTO> getWorktodoList(HttpSession session) {
		EmployeeDTO empDto = (EmployeeDTO) session.getAttribute("login");
		
		WorktodoDTO wtdDto = new WorktodoDTO();
		
		wtdDto.setRecipient_num(empDto.getEmp_num());
		
		List<WorktodoDTO> list = dao.selectWorktodoList(wtdDto.getRecipient_num());
		for(WorktodoDTO dto : list) {
			String str = dto.getReq_date().replace("/", ". ");
			int hour = Integer.parseInt(str.substring(11, 13));

			StringBuffer sb = new StringBuffer(str);
			if(hour > 12) {
				hour -= 12;
				if(hour < 10) {
					str = sb.replace(11,13,"· 오후 0"+hour).toString();
				}
				else {
					str = sb.replace(11,13,"· 오후 "+hour).toString();
				}
			}
			else {
				str = sb.replace(10,11," · 오전 ").toString();
			}
			
			
			dto.setReq_date(str);
		}
		
		return list;
	}

}
