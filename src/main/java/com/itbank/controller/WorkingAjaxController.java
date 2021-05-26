package com.itbank.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itbank.employee.EmployeeDTO;
import com.itbank.service.EmployeeService;
import com.itbank.service.WorkingService;
import com.itbank.working.DateDTO;
import com.itbank.working.WorkHoliDTO;
import com.itbank.working.WorkingDTO;

@RestController
public class WorkingAjaxController {
	
	@Autowired
	private WorkingService ts;
	
	@Autowired
	private EmployeeService es;
	
	private ObjectMapper mapper = new ObjectMapper();
	
	@GetMapping(value="checkWorking", produces="application/json;charset=utf8")
	public String checkWorking(HttpSession session) throws JsonProcessingException {
		WorkingDTO dto = ts.checkWorking(session);
		String data = mapper.writeValueAsString(dto);
		return data;
	}
	
	// 출근
	@PostMapping(value="setStart", produces="application/json;charset=utf8")
	public int startTime(HttpSession session) {
		int row = ts.setStartTime(session);
		return row;
	}
	
	// 근무시간 실시간
	@GetMapping(value="nowTime", produces="application/json;charset=utf8")
	public String nowTime(HttpSession session) {
		String nowTime = ts.getNowTime(session);
//		System.out.println("nowTime : " + nowTime);
		return nowTime;
	}
	
	// 퇴근
	@PutMapping(value="setEnd", produces="application/json;charset=utf8")
	public int endTime(HttpSession session) {
		int row = ts.setEndTime(session);
		return row;
	}
	
	// 추가 (이번주 스케줄)
		@GetMapping(value="weekSch/{sql}", produces = "application/json;charset=utf8")
		public String weekSch(@PathVariable String sql) throws JsonProcessingException {
			
//			System.out.println("호출됐나? : " + sql );
			String[] arr = sql.split(",");
			String emp_num = arr[4];
			String year = arr[0];
			String month = arr[1];
			String firstDay = arr[2];
			String lastDay = arr[3];
			String firstStart = year + "/" + month + "/" + firstDay;
			String lastStart = year + "/" + month + "/" + lastDay;
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("emp_num", emp_num);
			map.put("firstStart", firstStart);
			map.put("lastStart", lastStart);
			List<WorkingDTO> list = ts.getSchedule(map);
			
//			System.out.println("list 길이 :  " + list.size());
			
			String data = mapper.writeValueAsString(list);
			
			return data;
		}
		@GetMapping(value = "exceed/{sql}", produces = "application/text;charset=utf8")
		public String exceed(@PathVariable String sql,HttpSession session) {
			String[] arr = sql.split(",");
			
			String emp_num = arr[4];
			String year = arr[0];
			String month = arr[1];
			String firstDay = arr[2];
			String lastDay = arr[3];
			
			String firstStart = year + "/" + month + "/" + firstDay;
			String lastStart = year + "/" + month + "/" + lastDay;

			
			HashMap<String, String> map = new HashMap<String, String>();
			//String result = ts.allWork(map);
			map.put("emp_num", emp_num);
			map.put("firstStart", firstStart);
			map.put("lastStart", lastStart);
			
			String result = ts.allEx(map);
			
			session.setAttribute("allEx", result);
			
			return result;
		}
		
		// 요번주 근무 총합
		@GetMapping(value="allWork/{sql}", produces = "application/text;charset=utf8")
		public String allWork(@PathVariable String sql ,HttpSession session) {
			
		//	System.out.println("sql 잘들어왔나 : " + sql);
			
			String[] arr = sql.split(",");
			
			String emp_num = arr[4];
			String year = arr[0];
			String month = arr[1];
			String firstDay = arr[2];
			String lastDay = arr[3];
			
			String firstStart = year + "/" + month + "/" + firstDay;
			String lastStart = year + "/" + month + "/" + lastDay;

			
			HashMap<String, String> map = new HashMap<String, String>();
			//String result = ts.allWork(map);
			map.put("emp_num", emp_num);
			map.put("firstStart", firstStart);
			map.put("lastStart", lastStart);
			
			String result = ts.allWork(map);
			
			session.setAttribute("allWork", result);
			
			return result;
			
			
		}
		// 인사팀 직원들 정보 뽑아오는거
		@GetMapping(value="memberInfo/{dept}", produces = "application/json;charset=utf8")
		public String memberInfo(@PathVariable String dept) throws JsonProcessingException {
//			System.out.println("합치는 데프트 : " + dept);
			List<EmployeeDTO> list = es.getMembers(dept);
			String data = mapper.writeValueAsString(list);
//			System.out.println("합치는 데이터 : " + data);
			
			return data;
		}
		// 인사팀의 달별로 출근시간 퇴근시간 뽑아오는 거
		@GetMapping(value="memz{sql}",produces = "application/json;charset=utf8")
		public String memz(@PathVariable String sql) throws JsonProcessingException {
//			System.out.println("ㅇㅇㅇㅇㅇㅇㅇ");
//			System.out.println("sql : " + sql);
			
			DateDTO dto = new DateDTO();
			
			String[] arr = sql.split(",");
			
			dto.setYear(arr[0]);
			dto.setMonth(arr[1]);
			dto.setFirstDay(arr[2]);
			dto.setLastDay(arr[3]);
			dto.setEmpdept(arr[4]);
			
			List<WorkHoliDTO> list =ts.getWorkOff(dto);
			String data = mapper.writeValueAsString(list);
			return data;
			
		}
	
}
