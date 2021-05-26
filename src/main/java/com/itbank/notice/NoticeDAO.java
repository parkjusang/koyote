package com.itbank.notice;

import java.util.List;

public interface NoticeDAO {

	int insertNotice(NoticeDTO noti);

	List<NoticeDTO> selectNoticeAll();

	int deleteNotice(String seq);

}
