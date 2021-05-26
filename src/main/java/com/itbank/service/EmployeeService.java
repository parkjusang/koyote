package com.itbank.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.employee.EmployeeDAO;
import com.itbank.employee.EmployeeDTO;
import com.itbank.employee.Hash;
import com.itbank.sub.InsertInfoDTO;
import com.itbank.sub.SubDAO;
import com.itbank.sub.VacationDTO;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO dao;
	
	@Autowired
	private SubService ss;
	
	@Autowired
	private SubDAO subDao;
	
	public List<EmployeeDTO> getEmployeeList() {
		return dao.selectListAll();
	}
	
	public List<EmployeeDTO> getEmployeeList(int idx) {
		return dao.selectList(idx);
	}

	public List<EmployeeDTO> getEmployeeList(String search) {
		search = "%" + search + "%";
		return dao.searchList(search);
	}
	
	public String getEmpAll() {
		return dao.countEmpAll();
	}

	public int insertEmployee(InsertInfoDTO dto) {

		// 사번 set
		if(dto.getEmp_num() == 0) {
			dto.setEmp_num(createEmpNum(dto));
		}
		
		// 비밀번호 set (초기 비밀번호 : 사번)
		dto.setEmp_pw(Hash.getHash(dto.getEmp_num()));
		
		// 성별 및 나이 set
		dto = setDTO(dto);
		
		// 직급, 조직 번호 set
		dto.setEmp_pos(dto.getPos_name());
		dto.setEmp_dept(dto.getDept_name());

		// 기본급 set
		dto.setEmp_sala(dto.getCon_income()/12);

		
		int row = 1;
		
		row *= dao.insertEmpolyee(dto);
		
//		row *= ss.insertContract(dto);
		
		return row;
	}
	
	// 사번 생성 함수
	private int createEmpNum(InsertInfoDTO dto) {
		
		// AA : 입사연도 두 자리 (1979년 입사 : 79)
		SimpleDateFormat format = new SimpleDateFormat("yy");
		String year = format.format(dto.getStart_day());
		
		// BB : 조직번호를 1번부터 99번까지 매김. (인사팀 10, 회계 20...)
		String deptNum = subDao.selectDeptOne(dto.getDept_name());
		
		// CCC : 해당 연도 입사자를 1번부터 999번까지 매김.
		int empCnt = dao.countEmpYear(year + "%") + 1;
		String empCntStr = Integer.toString(empCnt);
		if(empCnt < 100) { empCntStr = "0" + empCntStr; }
		if(empCnt < 10) { empCntStr = "0" + empCntStr; }
		
		// 사번 : AABBCCC
		String empNumStr = year + deptNum + empCntStr;
		int empNum = Integer.parseInt(empNumStr);
		
		return empNum;
	}

	// 주민등록번호로 나이, 성별 set
	private InsertInfoDTO setDTO(InsertInfoDTO dto) {
		String birthNum = dto.getEmp_birthnum();
		
		// 성별  dto 등록
		char gender = birthNum.charAt(7);
		if(gender == '1' || gender == '3') {
			dto.setEmp_gender("남자");
		}
		else if(gender == '2' || gender == '4') {
			dto.setEmp_gender("여자");
		}
		
		// 나이 dto 등록
		int age = Integer.parseInt(birthNum.substring(0, 2));
		if(gender == '1' || gender == '2') {
			age = 1900 + age;
		}
		else if(gender == '3' || gender == '4') {
			age = 2000 + age;
		}
		dto.setEmp_age(age);
		
		return dto;
	}
	

	
		public int MemberLogin(EmployeeDTO emp, HttpSession session) {
		
		emp.setEmp_pw(Hash.getHash(emp.getEmp_pw()));
		
		EmployeeDTO memberCheck = dao.MemberLogin(emp); 
		List<HashMap<String, Object>> deptList = subDao.selectDeptList();
		// 남은 휴가 일수와 365일 기준 남은 일자 계산해서 넣기 
		VacationDTO vacNum = dao.selectvacationNum(memberCheck.getEmp_num());
		
		if( memberCheck != null ) {
			session.setAttribute("login", memberCheck);
			session.setAttribute("departList", deptList);
			session.setAttribute("vacNum", vacNum.getAnnual_leave());
			session.setAttribute("RemainingNum", Remaining());
			return 1 ; 
		} 
		
	
		
		return 0;
	}
	
	// 프로필 모달의 카테고리중 휴가에 쓰인 데이터 (4월5일 변경 보람)
		public int Remaining() {
			
			Date fmt= new Date();
			SimpleDateFormat fmtDate = new SimpleDateFormat("yyMMdd");
			String getTime = fmtDate.format(fmt);
			
			return dao.RemainingVaction(getTime);
		}
		
	
	// modal
	public int hrInsert(EmployeeDTO emp, HttpServletRequest req) {
		
		int empInsert = dao.memberInsert(emp);
		
		EmployeeDTO memberList = dao.selectMember(emp.getEmp_num());
		
		HttpSession session =  req.getSession();
		session.setAttribute("login", memberList);
		
		return empInsert;
		
	}

	public int deInfoInsert(EmployeeDTO emp, HttpServletRequest req) {
		
		int empInsert = dao.memberDeInsert(emp);
		
		EmployeeDTO memberList = dao.selectMember(emp.getEmp_num());
		
		HttpSession session =  req.getSession();
		session.setAttribute("login", memberList);
		
		return empInsert;
	}

	public int Remaining(int num) {
		
		Date fmt= new Date();
		SimpleDateFormat fmtDate = new SimpleDateFormat("yyMMdd");
		String getTime = fmtDate.format(fmt);
		
		return dao.RemainingVaction(getTime);
	}

	public EmployeeDTO getEmployee(int emp_num) {
		return dao.selectMember(emp_num);
	}

	// 로그인한 사람의 팀직원 정보뽑아오는거
	public List<EmployeeDTO> getMembers(String dept) {
		
		return dao.getMembers(dept);
	}

}
