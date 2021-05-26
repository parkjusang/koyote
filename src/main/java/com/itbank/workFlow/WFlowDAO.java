package com.itbank.workFlow;

import java.util.HashMap;
import java.util.List;

import com.itbank.employee.EmployeeDTO;

// 비품 연차 DAO
public interface WFlowDAO {
	
	List<EmployeeDTO> getAdminList();

	int insertEquiList(WFlowEquiDTO dto);
	
	int insertAnnual(WflowAnnualDTO dto);

	int insertReqEqui(ReqeustDTO reqDTO);

	List<EmployeeDTO> getDeptList(String dept);

	List<storegeDTO> selectStorage();

	List<storegeDTO> selectEquiList();

	List<storegeDTO> selectAnnList();

	int updateApp(HashMap<String, String> list);

	int selectCCount(int emp_num);

	List<storegeDTO> selectStorage(int emp_num);

	void updateApproval(HashMap<String, String> list);

	void updateApprovalanu(HashMap<String, String> list);


}
