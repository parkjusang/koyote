package com.itbank.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.employee.EmployeeDTO;
import com.itbank.notice.NoticeDTO;
import com.itbank.service.EmployeeService;
import com.itbank.service.NoticeService;
import com.itbank.service.WorkFlowService;
import com.itbank.service.WorkListService;
import com.itbank.service.WorktodoService;
import com.itbank.workFlow.ReqeustDTO;
import com.itbank.workFlow.WFlowDAO;
import com.itbank.workFlow.WFlowEquiDTO;
import com.itbank.workFlow.WflowAnnualDTO;
import com.itbank.workFlow.storegeDTO;
import com.itbank.worktodo.WorktodoDTO;

@Controller
public class MainController {

	@Autowired
	EmployeeService es;
	
	@Autowired
	NoticeService ns;
	
	@Autowired
	WorktodoService ws;
	
	@Autowired 
	private WorkListService wls;
	
	@Autowired
	private WFlowDAO workDAO;
	
	@Autowired
	private WorkFlowService workSev;
	
	@GetMapping("")
	public String main(HttpSession session) 	{
		
		List<NoticeDTO> noticeList = ns.getNoticeList();
		session.setAttribute("noticeList", noticeList);
		
		List<WorktodoDTO> worktodoList = ws.getWorktodoList(session);
		session.setAttribute("worktodoList", worktodoList);
		
		return "home"; 
	}
	
	@GetMapping("people")
	public String peo() 	{ return "people"; }
	
	@GetMapping("people/hr")
	public String peo_HR()	{ return "people_HR"; }
	
	@GetMapping("people/add")
	public String add() 	{ return "people_add"; }
	
	@GetMapping("company")
	public String company() { return "company"; }
	
	@GetMapping("workholi")
	public String workholi() {return "workholi";}

	
	// login (login.jsp)
	@GetMapping("login")
	public String login(HttpSession session) {
		if(session.getAttribute("login") != null) {
			return "redirect:/";
		}
		
		return "login";
	}
	
	@PostMapping("login")
	public ModelAndView loginCheck(EmployeeDTO emp , HttpSession session) { 
		
		ModelAndView mav = new ModelAndView("login");
		
		String msg = "아이디 또는 비밀번호가 일치하지 않습니다.";
		
		int row = es.MemberLogin(emp,session);
		
		if(row == 1 ) {
			mav.setViewName("redirect:/");
			return mav;
		}
		mav.addObject("msg", msg);
		
		return mav;
		
	}
	
	// logout (header.jsp)
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 추가 구성원스케줄로 이동(worklist.jsp)
	@GetMapping("worklist/{emp_dept}")
	public ModelAndView worklist(@PathVariable String emp_dept) {
		
		ModelAndView mav = new ModelAndView("worklist");
		
		
		
		ArrayList<String> hello = wls.getHelloTeam(emp_dept); 
		
		String helloarr[] = new String[hello.size()];
		for(int i=0;i<hello.size();i++) {
			helloarr[i] = hello.get(i);	
		}
		
		
		mav.addObject("helloarr",helloarr);
		int num = 0; 
		for(String list : hello) {
			num++;
		}
		mav.addObject("hellosize", num);
		
		
		return mav;
		
	}
	
	@GetMapping("workFlow")
	public void workFlow(Model model, HttpSession session) {
		
		int emp_num = ((EmployeeDTO) session.getAttribute("login")).getEmp_num();
//		System.out.println(emp_num);
		List<storegeDTO> allList = workDAO.selectStorage(emp_num);
		List<storegeDTO> equiList = workDAO.selectEquiList();
		List<storegeDTO> annList= workDAO.selectAnnList();
		
		int checkCount = workDAO.selectCCount(emp_num);
		int count = 0 ; 
		
		for(storegeDTO num : allList) {
			count++ ;
			model.addAttribute("count", count);
			model.addAttribute("storage", allList);
			model.addAttribute("equiList", equiList);
			model.addAttribute("annList", annList);
			model.addAttribute("checkCount", checkCount);
		}
		
	}
	
	// 워크플로우 조직장 리스트 
	@GetMapping("workFlow/{dept}")
	public String workFlow(@PathVariable String dept,HttpSession session) { 
		
		int num = 0 ; 
		List<EmployeeDTO> adminList = workDAO.getAdminList();
		session.setAttribute("adminList", adminList);
		
		// 승인 참조 대상 count
		for(EmployeeDTO count : adminList) {
			num++;
		}
		session.setAttribute("adminCount", num);
		
		// 작성 요청 시 리스트 뽑아오기
		workSev.getDept(dept,session);
		
		return "redirect:/workFlow"; 
		
	}

	// 비품작성  시 insert 
	@PostMapping("workFlow")
	public String workFlow(WFlowEquiDTO dto) {
		
		int insertEqui = workSev.insertEqui(dto);

		
		return "redirect:/workFlow";
	}
	
	// 연차작성  시 insert 
	@PostMapping("annual")
	public String workFlow(WflowAnnualDTO dto) {
		
		
		int insertAnnual = workSev.insertAnnual(dto);
		

		return "redirect:/workFlow";
	}
	
	// 비품,연차 요청하기 클릭 시 insert 
	@PostMapping("fixModal")
	public String fix_modal(ReqeustDTO reqDTO) {
		
		int insertReqEqui = workDAO.insertReqEqui(reqDTO);
		
		return "redirect:/workFlow";
	}
	
	
	@PostMapping("approval")
	public String approval(HttpServletRequest req) {
		
		String senN = req.getParameter("sender_num");
		String reqD = req.getParameter("req_date");
		String kinds = req.getParameter("kinds");
		String command = req.getParameter("command");
		
		System.out.println(kinds);
		System.out.println(reqD);
		System.out.println(senN);
		
		HashMap<String, String> list = new HashMap<String, String>();
		list.put("senN", senN);
		list.put("reqD", reqD);
		list.put("kinds", kinds);
		list.put("command", command);
		
		if("비품".equals(kinds)) {
			workDAO.updateApproval(list);
			System.out.println("비품 실행");
		}if("연차".equals(kinds)) {
			workDAO.updateApprovalanu(list);
			System.out.println("연차 실행");
		}
	
		int updateGo = workDAO.updateApp(list);
		
		
		return "redirect:/workFlow" ;
	}
	

}
