package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.employee.EmployeeDAO;
import com.itbank.service.EmployeeService;
import com.itbank.sub.VacationDTO;

@Controller
public class ModalController {
	
	@Autowired
	private EmployeeDAO empDAO;
	
	@Autowired
	private EmployeeService es;
	
	@GetMapping("modal_HRpage/{num}/")
	public ModelAndView modal_HRpage(@PathVariable int num, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("modal_HRpage");
		
		return mav ;
	}
	
	@GetMapping("modal_workTime")
	public void working() {}
	

	
	@GetMapping("modal_vacation/{num}")
	public String modal_vacation(Model model,@PathVariable int num) {
		
		System.out.println(num);
		
		VacationDTO vacNum = empDAO.selectvacationNum(num);
		int RemainingNum = es.Remaining(num);
		
		System.out.println(vacNum.getAnnual_leave());
		
		model.addAttribute("vacNum", vacNum.getAnnual_leave());
		model.addAttribute("RemainingNum", RemainingNum);
		
		return "modal_vacation";
	}
	
	@GetMapping("modal_notified")
	public String salary() {
		return "modal_notified";
	}
	
}
	

	
	
	
	
	