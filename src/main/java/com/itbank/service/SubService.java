package com.itbank.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.sub.InsertInfoDTO;
import com.itbank.sub.SubDAO;

@Service
public class SubService {
	
	@Autowired
	private SubDAO dao;
	
	// department list
	public List<HashMap<String, Object>> getDepartmentList() {
		List<HashMap<String, Object>> list = dao.selectDeptList();
//		list.remove(0);
		return list;
	}
	
	// position list
	public List<HashMap<String, Object>> getPositionList() {
		List<HashMap<String, Object>> list = dao.selectPosList();
		list.remove(0);
		return list;
	}
	
	// bank list
	public List<HashMap<String, Object>> getBankList() {
		List<HashMap<String, Object>> list = dao.selectBankList();
//		list.remove(0);
		return list;
	}

	public int insertContract(InsertInfoDTO dto) {

		System.out.println("사번 : "+dto.getEmp_num());
		System.out.println("연봉 : "+dto.getCon_income());
		System.out.println("연봉시작일 : "+dto.getCon_startday());
		System.out.println("연봉종료일 : "+dto.getCon_endday());
		
		return 0;
	}
	


}
