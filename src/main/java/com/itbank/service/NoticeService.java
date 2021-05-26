package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.notice.NoticeDAO;
import com.itbank.notice.NoticeDTO;

@Service
public class NoticeService {

	@Autowired
	NoticeDAO dao;
	
	public int addNotice(NoticeDTO noti) {
		if(noti.getContents() == null) {
			return 0;
		}
		
		return dao.insertNotice(noti);
	}

	public List<NoticeDTO> getNoticeList() {
		return dao.selectNoticeAll();
	}

	public int delNotice(String seq) {
		return dao.deleteNotice(seq);
	}

}
