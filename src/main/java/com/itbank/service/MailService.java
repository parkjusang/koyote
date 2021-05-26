package com.itbank.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.itbank.sub.InsertInfoDTO;
import com.itbank.sub.subMethod;

@Service
public class MailService {
	
	public String sendMail(InsertInfoDTO dto, String account) {
		// 여기서부터 메일을 발송하는데 사용하는 코드
		String host = "smtp.naver.com";
		final String username = account.split("/")[0];
		final String password = account.split("/")[1];
		int port = 465;
		
		String subject = "[KOYOTE] " + dto.getEmp_name() +"님 입사를 진심으로 축하드립니다.";
		String body ="귀하의 합격을 진심으로 축하드리며, 아래의 내용을 참고하시어 입사준비 바랍니다.<br><br>"
				+ "            -- 아    래 --<br><br>"
				+ "○ 입사일자 (예정)<br> - " + subMethod.transformString(dto.getStart_day()) + "<br><br>"
				+ "○ 입직교육 (예정)<br> - 그룹연수(1주)<br><br>"
				+ "○ 기타<br> - 문  의 : KOYOTE 인사부 051) 000-0000";
		
		// 메일 보내는 서버에 대한 인증과 속성을 설정한다 (smtp)
		Properties props = System.getProperties();
		
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.trust", host);
		
		// 속성 + 인증(id, pw)을 이용하여 세션을 생성
		Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
			String un = username;
			String pw = password;
			
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(un, pw);
			}
		});
		mailSession.setDebug(true); // 세션에 대한 처리내용을 콘솔에 출력할 수 있도록 debug를 활성화
		
		// 메일의 전반적인 내용을 설정(보내는 사람, 받는 사람, 제목, 내용)
		Message mimeMessage = new MimeMessage(mailSession);
		System.out.println(username + " : " + password);
		try {
			mimeMessage.setFrom(new InternetAddress(username + "@naver.com"));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(dto.getEmp_email()));
			mimeMessage.setSubject(subject);
//			mimeMessage.setText(body);
			mimeMessage.setContent(body, "text/html;charset=euc-kr");
			Transport.send(mimeMessage);
		} catch (AddressException e) {
			return "주소가 잘못되었습니다";
		} catch (MessagingException e) {
			return "주소를 전송할 수 없습니다";
		}
		
		return "성공";
	}
}











