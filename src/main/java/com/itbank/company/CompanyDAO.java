package com.itbank.company;

import java.util.HashMap;
import java.util.List;

public interface CompanyDAO {

	List<HashMap<String, Object>> getCompany();

	int updateImg();

	int updateImg(String file);

	int updateFileName(String fileName);

	String callImgName();

	String callImgName1();
}
