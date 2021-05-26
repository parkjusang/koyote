package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.employee.EmployeeDTO;
import com.itbank.service.EmployeeService;
import com.itbank.service.ProfileService;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.SftpException;



@RestController
public class ModalAjaxController {
	
	@Autowired
	private ProfileService ps; 
	@Autowired
	private EmployeeService es;
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@PostMapping(value="form", consumes ={"multipart/form-data"} , produces = "application/text;cherset=utf-8")
	public String upload(HttpServletRequest req) throws IllegalStateException, IOException, JSchException, SftpException {
		
		String resultMsg = ps.uploadFile(req);
		
		return  resultMsg; 
		
	}
	
	@PostMapping(value = "hr_insert" , 
			consumes = "application/json;chatset=utf-8", 
			produces = "application/text;chatset=utf-8")
	public ResponseEntity hrInsert(@RequestBody EmployeeDTO emp ,HttpServletRequest req) throws JsonProcessingException {
		
		int empInsert = es.hrInsert(emp,req);
		
		if(empInsert == 1) {
			EmployeeDTO dto = es.getEmployee(emp.getEmp_num());
			System.out.println(dto.getDept_name());
			String data = mapper.writeValueAsString(dto);
			
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			
			return new ResponseEntity(data, responseHeaders, HttpStatus.CREATED);  
		}
		return null;
		
	}
	
	@PostMapping(value = "deInfo_insert" , 
			consumes = "application/json;chatset=utf-8", 
			produces = "application/text;chatset=utf-8")
	public ResponseEntity deInfoInsert(@RequestBody EmployeeDTO emp ,HttpServletRequest req) throws JsonProcessingException {
		System.out.println(emp.getEmp_email());
		int empDe_Insert = es.deInfoInsert(emp,req);
		
		if(empDe_Insert == 1) {
			EmployeeDTO dto = es.getEmployee(emp.getEmp_num());
//			System.out.println(dto.getDept_name());
			String data = mapper.writeValueAsString(dto);
			
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			
			return new ResponseEntity(data, responseHeaders, HttpStatus.CREATED);  
		}
		
		
		return null;
	}



}
