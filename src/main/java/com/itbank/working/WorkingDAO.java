package com.itbank.working;

import java.util.HashMap;
import java.util.List;

public interface WorkingDAO {

	int insertWorkingInfo(WorkingDTO dto);

	WorkingDTO selectWorking(WorkingDTO dto);

	int updateOffWork(WorkingDTO dto);
	
	// 요번주 근무 총합 
	String allWork(HashMap<String, String> map);

	// 이번주 스케줄 리스트로 뽑아오는거
	List<WorkingDTO> getSchedule(HashMap<String, String> map);

	// 출퇴근시간 뽑아오는 리스트
	
	String getTeamCount(String emp_dept);
	// 출퇴근시간 뽑아오는 리스트
	List<WorkHoliDTO> getWorkOff(DateDTO dto);

	String allEx(HashMap<String, String> map);

}
