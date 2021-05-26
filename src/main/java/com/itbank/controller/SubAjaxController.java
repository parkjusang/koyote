package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.employee.EmployeeDTO;
import com.itbank.notice.NoticeDTO;
import com.itbank.service.NoticeService;
import com.itbank.service.SubService;

@RestController
public class SubAjaxController {
	
	@Autowired
	private SubService ss;
	@Autowired
	NoticeService ns;
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@GetMapping(value="department", produces="application/json;charset=utf8")
	public String departmentList() throws JsonProcessingException {
		List<HashMap<String, Object>> list = ss.getDepartmentList();
		String data = mapper.writeValueAsString(list);
		return data;
	}
	@GetMapping(value="position", produces="application/json;charset=utf8")
	public String positionList() throws JsonProcessingException {
		List<HashMap<String, Object>> list = ss.getPositionList();
		String data = mapper.writeValueAsString(list);
		return data;
	}
	@GetMapping(value="bank", produces="application/json;charset=utf8")
	public String bankList() throws JsonProcessingException {
		List<HashMap<String, Object>> list = ss.getBankList();
		String data = mapper.writeValueAsString(list);
		return data;
	}
	
	// 공지 작성
	@PostMapping(value="noticeAdd", produces="application/json;charset=utf8")
	public int noticeAdd(@RequestBody NoticeDTO dto, HttpSession session) {
		
		EmployeeDTO emp = (EmployeeDTO) session.getAttribute("login");
		
		NoticeDTO noti = new NoticeDTO();
		noti.setEmp_num(emp.getEmp_num());
		noti.setEmp_name(emp.getEmp_name());
		noti.setEmp_profile(emp.getEmp_profile());
		noti.setContents(dto.getContents().replace("\r\n","<br>"));

		
		int row = ns.addNotice(noti);
		
		return row;
	}
	
	// 공지 삭제
	@DeleteMapping(value="noticeDel/{seq}")
	public int noticeDel(@PathVariable String seq) {
		
		int row = ns.delNotice(seq);
		return row;
	}
	
	
	
	
	
}
