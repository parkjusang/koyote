package com.itbank.sub;

import java.util.HashMap;
import java.util.List;

public interface SubDAO {
	
	List<HashMap<String, Object>> selectDeptList();

	List<HashMap<String, Object>> selectPosList();

	List<HashMap<String, Object>> selectBankList();

	String selectDeptOne(String dept_name);

	String selectPosOne(String dept_name);

	
}
