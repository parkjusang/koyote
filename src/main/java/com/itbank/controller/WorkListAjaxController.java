package com.itbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.WorkListService;

@RestController
public class WorkListAjaxController {
	@Autowired
	private WorkListService ws;
	
	@GetMapping(value="allTeamlist/{emp_dept}",produces = "application/text;charset=utf8")
	public String allTeamCount(@PathVariable String emp_dept) {
		String count = ws.getTeamCount(emp_dept);
		
		return count;
	}
}
