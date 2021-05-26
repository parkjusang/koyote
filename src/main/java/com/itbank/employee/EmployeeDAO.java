package com.itbank.employee;

import java.util.ArrayList;
import java.util.List;

import com.itbank.sub.InsertInfoDTO;
import com.itbank.sub.VacationDTO;

public interface EmployeeDAO {
	
	List<EmployeeDTO> selectList(int idx);

	List<EmployeeDTO> selectListAll();

	List<EmployeeDTO> searchList(String search);

	int countEmpYear(String start_year);

	int insertEmpolyee(InsertInfoDTO dto);

	String countEmpAll();

	// modal
	EmployeeDTO selectMember(int num);

	EmployeeDTO MemberLogin(EmployeeDTO emp);

	int profileUpload(EmployeeDTO emp);

	int fileNameupload(EmployeeDTO dto);

	String fileName(int num);

	EmployeeDTO updateSession(int num);

	int memberInsert(EmployeeDTO emp);

	int memberDeInsert(EmployeeDTO emp);

	int RemainingVaction(String getTime);

	VacationDTO selectvacationNum(int num);
	
	ArrayList<String> getHelloTeam(String emp_dept);
	
	List<EmployeeDTO> getMembers(String dept);


}
