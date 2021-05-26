package com.itbank.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.itbank.employee.EmployeeDTO;
import com.itbank.working.DateDTO;
import com.itbank.working.WorkHoliDTO;
import com.itbank.working.WorkingDAO;
import com.itbank.working.WorkingDTO;

@Service
public class WorkingService {
	
	@Autowired private WorkingDAO dao;
	
	// insert working
	public int setStartTime(HttpSession session) {
		
		// 오늘자 set
		WorkingDTO dto = setNowtimeEmpNum(session);
				
		System.out.println("today : "+ dto.getToday_date());
		System.out.println("startTime : "+ dto.getWorking_time());
		
		int row = 0;
		try {
			row = dao.insertWorkingInfo(dto);
		} catch(DataIntegrityViolationException e) {
			System.out.println("무결성 제약조건 : " + e);
			return 0;
		}
		
		return row;
	}
	
	// 실시간 근무시간
	public String getNowTime(HttpSession session) {
		
		// 오늘자 set
		WorkingDTO dto = setNowtimeEmpNum(session);
		
		// session에 login 정보를 통해 오늘자 해당 사원의 출근시간 가져오기
		WorkingDTO selectDto = dao.selectWorking(dto);
		if(selectDto == null) { return null; }
		
//		System.out.println("오늘 : "+selectDto.getToday_date());
//		System.out.println("출근 : "+selectDto.getWorking_time());
		
		// 현재시간 - 출근시간 반환 (00:00:00)
		Date time = new Date();
		SimpleDateFormat timeFormat = new SimpleDateFormat ( "HH:mm:ss");
		String nowTime = timeFormat.format(time);
		String startTime = selectDto.getWorking_time();
		
		return differenceBetweenAandB(nowTime, startTime);
	}

	// 로그인 정보로 출근여부 확인
	public WorkingDTO checkWorking(HttpSession session) {
		
		// 오늘자 set
		WorkingDTO dto = setNowtimeEmpNum(session);
		
		// session에 login 정보를 통해 오늘자 해당 사원의 출근시간 가져오기
		WorkingDTO selectDto = dao.selectWorking(dto);
		
		return selectDto;

	}
	
	
	
	// WorkingDTO set : 오늘자 날짜 및 시간, 사원번호 
	private WorkingDTO setNowtimeEmpNum(HttpSession session) {
		WorkingDTO dto = new WorkingDTO();
		
		// 오늘자 날짜
		SimpleDateFormat dateFormat = new SimpleDateFormat ( "yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat ( "HH:mm:ss");
				
		Date time = new Date();
				
		String today = dateFormat.format(time);			// 근무 날짜
		// 현시각을 시작시간 및 끝시간에 다 setting하여 사용
		String workingTime = timeFormat.format(time);	// 근무 시작시간
		String endTime = timeFormat.format(time);		// 근무 끝시간
		
		Date todayDate = null;
		try {
			todayDate = dateFormat.parse(today);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		dto.setToday_date(todayDate);
		dto.setWorking_time(workingTime);
		dto.setOff_work(endTime);
		
		// 사원 번호
		EmployeeDTO empDto = (EmployeeDTO) session.getAttribute("login");
		dto.setEmp_num(empDto.getEmp_num());
		
		return dto;
	}
	
	public int setEndTime(HttpSession session) {
		// 오늘자 set
		WorkingDTO dto = setNowtimeEmpNum(session);
		
		int row = dao.updateOffWork(dto);
		
		return row;
	}
	
	
	/* service 내부 함수 */
	// A - B
	private String differenceBetweenAandB(String timeA_str, String timeB_str) {
		
		int timeA = stringTimeFormatToInt(timeA_str);
		int timeB = stringTimeFormatToInt(timeB_str);
		
		String result = intToStringTimeFormat(timeA - timeB);
		
		return result;
	}
	
	// time string to int
	private int stringTimeFormatToInt(String timeStr) {
		timeStr = timeStr.replaceAll(":", "");
	    int intTemp = 0;
	    
	    String hoursStr	= timeStr.substring(0,2);
	    String minutesStr = timeStr.substring(2,4);
	    String secondsStr = timeStr.substring(4);
	    
	    intTemp = Integer.parseInt(secondsStr) + (Integer.parseInt(minutesStr) * 60)
	    		+ (Integer.parseInt(hoursStr) * 3600);
	    
	    return intTemp;
	}
	
	// int to time string
	private String intToStringTimeFormat(int time) {
		String strTemp = "";
		int seconds	= time % 60;
		int minutes	= (time / 60) % 60;
		int hours	= (time / 60) / 60;
		
		if(hours < 1) {
			strTemp = "00:";
		}
		else if(hours < 10)
			strTemp = "0" + Integer.toString(hours) + ":";
		else
			strTemp = Integer.toString(hours) + ":";
		
		if(minutes < 1) {
			strTemp += "00:";
		}
		else if(minutes < 10)
			strTemp += "0" + Integer.toString(minutes) + ":";
		else
			strTemp += Integer.toString(minutes) + ":";
		
		if(seconds < 10)
			strTemp += "0" + Integer.toString(seconds);
		else
			strTemp += Integer.toString(seconds);
		
		return strTemp;
	}
	
	// 요번주 근무 총합
	public String allWork(HashMap<String, String> map) {
		
		String result = dao.allWork(map);
		return result;
	}
	// 이번주 스케줄 리스트로 뽑아오는거
	public List<WorkingDTO> getSchedule(HashMap<String, String> map) {
		
		return dao.getSchedule(map);
	}

	public List<WorkHoliDTO> getWorkOff(DateDTO dto) {
		
		return dao.getWorkOff(dto);
	}

	public String allEx(HashMap<String, String> map) {
		
		return dao.allEx(map);
	}



}
