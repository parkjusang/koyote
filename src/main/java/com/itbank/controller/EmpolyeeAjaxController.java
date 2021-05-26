package com.itbank.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.employee.EmployeeDTO;
import com.itbank.service.EmployeeService;
import com.itbank.service.MailService;
import com.itbank.sub.InsertInfoDTO;

@RestController
public class EmpolyeeAjaxController {
	
	@Autowired
	private EmployeeService ms;
	
	@Autowired
	MailService mailService;
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@GetMapping(value="employee", produces="application/json;charset=utf8")
	public String employeeSelectList() throws JsonProcessingException {
		List<EmployeeDTO> list = ms.getEmployeeList();
		String data = mapper.writeValueAsString(list);
		return data;
	}
	
	@GetMapping(value="employee/{idx}", produces="application/json;charset=utf8")
	public String employeeSelectList(@PathVariable int idx) throws JsonProcessingException {
		List<EmployeeDTO> list = ms.getEmployeeList(idx);
		String data = mapper.writeValueAsString(list);
		return data;
	}
	
	@GetMapping(value="employee/search/{search}", produces="application/json;charset=utf8")
	public String employeeSelectList(@PathVariable String search) throws JsonProcessingException {
		List<EmployeeDTO> list = ms.getEmployeeList(search);
		String data = mapper.writeValueAsString(list);
		return data;
	}
	
	@PostMapping(value="employee", produces="application/json;charset=utf8")
	public int insertEmpolyee(@RequestBody InsertInfoDTO dto, HttpSession session) throws FileNotFoundException {
		
		int row = 1;
		row = ms.insertEmployee(dto);
		
		if(row == 1) {	// insert 성공 시 메일 보내기
			String filePath = session.getServletContext().getRealPath("/WEB-INF/data/mailAccount.dat");
			File f = new File(filePath);
			if(f.exists() == false) {
				System.out.println("메일 전송에 필요한 계정정보를 찾을 수 없습니다");
			}
			Scanner sc = new Scanner(f);
			String account = null;
			while(sc.hasNextLine()) {
				account = sc.nextLine();
			}
			sc.close();
			
			System.out.println(dto.getEmp_email());
			
			String result = mailService.sendMail(dto, account);
			System.out.println(result);
			if(result.equals("성공") == false) {
				return -9999;
			}
		}
		System.out.println("row : " + row);
		
		return row;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
