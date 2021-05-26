package com.itbank.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.service.CompanyService;
import com.itbank.service.EmployeeService;
import com.itbank.service.UploadService;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.SftpException;

@RestController
public class CompanyAjaxController {
	private ObjectMapper mapper = new ObjectMapper();
	
	@Autowired private CompanyService cs;
	@Autowired private EmployeeService es;
	@Autowired private UploadService us;
	
	private String fileName;
	
	@GetMapping(value="company1", produces = "application/json;charset=utf8")
	public String companyList() throws JsonProcessingException {
		
		List<HashMap<String, Object>> list = cs.getCompany();
		
		//for(HashMap<String, Object> map : list) {
		//	System.out.println(map);
		//}
		String json ="";
		json = mapper.writeValueAsString(list);
		return json;
	}
	@GetMapping(value="allPeople", produces = "application/text;charset=utf8")
	public String allPeople2() {
		String sum = es.getEmpAll();
		return sum;
	}
	
	@PostMapping(value="upload", produces = "application/text;charset=utf8")
	public String upload(MultipartFile file ) throws IllegalStateException, IOException, SftpException, JSchException {
//		System.out.println("파일이름 : " + file);
		fileName = file.getOriginalFilename();
//		System.out.println(file.getSize());
		
		BufferedImage image = ImageIO.read(file.getInputStream());
		
		int row = us.uploadFile(file);
		
		return "/upload/" + file.getOriginalFilename();
	}
	
	@GetMapping(value="updateImg",produces = "application/text;charset=utf8" )
	public void updateImg() {
//		System.out.println("파일이름 : " + fileName);
		int row = cs.updateFileName(fileName);
	}
	
	@GetMapping(value="callImg",produces = "application/text;charset=utf8")
	public String callImg1() {
		String path = cs.callFileName();
		return path;
	}
	@GetMapping(value="callImgFirst",produces = "application/text;charset=utf8")
	public String callImgFirst() {
		String path2 = cs.callFileName1();
		return path2;
	}



}
