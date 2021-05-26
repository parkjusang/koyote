package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.company.CompanyDAO;



@Service
public class CompanyService {

	@Autowired private CompanyDAO dao;
	
	public List<HashMap<String, Object>> getCompany() {
		return dao.getCompany();
	}

	public int updateImg(String file) {
		return dao.updateImg(file);
	}
	
	public int updateFileName(String fileName) {
		return dao.updateFileName(fileName);
	}

	public String callFileName() {
		return dao.callImgName();
	}

	public String callFileName1() {
		return dao.callImgName1();
	}

}
