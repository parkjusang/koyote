package com.itbank.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itbank.employee.EmployeeDAO;
import com.itbank.employee.EmployeeDTO;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpException;

@Service
public class ProfileService {
	
	private final String serverIP = "221.164.9.200";   // ���ε� ������ ip Ȥ�� dns name
	   private final int serverPort = 22;               // SSH Protocol Port
	   private final String serverUser = "root";         // Linux User
	   private final String serverPass = "1";            // password
	   private ChannelSftp chSftp = null;

	@Autowired
	private EmployeeDAO emp_dao;



	public String uploadFile(HttpServletRequest req) throws IllegalStateException, IOException, JSchException, SftpException {

		// ajax로 넘어온 파일객체
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) req;
		// 파일 형변환
		MultipartFile file = multipartRequest.getFile("file");


		EmployeeDTO dto = new EmployeeDTO();

		// 파일이름
		String fileName = file.getOriginalFilename();
		// 사원번호 int타입 형변환
		int empNumber = Integer.parseInt(req.getParameter("emp_num"));

		dto.setEmp_profile(fileName);
		dto.setEmp_num(empNumber);

		// DB에 profile 경로 저장
		int fileupCheck = emp_dao.fileNameupload(dto);

		HttpSession session = req.getSession();
		
		EmployeeDTO list = (EmployeeDTO) session.getAttribute("login");
		
		list.setEmp_profile(fileName);

		session.setAttribute("login", list);

      Session sess = null;
      Channel channel = null;
      JSch jsch = new JSch();
      
      sess = jsch.getSession(serverUser, serverIP, serverPort);   // �⺻ ���� ����
      sess.setPassword(serverPass);                        // �н�����
      sess.setConfig("StrictHostKeyChecking", "no");            // ssh�� Ű��ȯ ���� ����(id/pw �ʿ����)
      
      sess.connect();      // 22�� ��Ʈ�� ssh, scp, sftp ���� ���� ����� �����Ƿ� 
      
      channel = sess.openChannel("sftp");    // sftp�� ����ϴ� ä�η� ����
      channel.connect();
      
      chSftp = (ChannelSftp)channel;
      
      File tmp = new File(fileName);      // �������� ������ ������ �ӽ÷� ����
      file.transferTo(tmp);                           // ���ε� ������ File��ü�� ��ȯ
      
      FileInputStream fis = new FileInputStream(tmp);         // tmp�� �о �������� ���� ��Ʈ��
      chSftp.cd("/var/www/html");                        // var/www/html : apache�� �⺻ ���
      chSftp.put(fis, fileName);         // ��Ʈ���� �̸��� �����Ͽ� ���ε�
      
      
      fis.close();      // ��Ʈ�� �ݱ�
      chSftp.exit();      // SFTP ���� ����
      tmp.delete();      // �ӽ����� ����
      
      String fileName1 = "";
      fileName1 += "http://";      // ��������, ��� ������ apache ���񽺷� ����
      fileName1 += serverIP;      // ������ IP Ȥ�� DNS Name
      fileName1 += "/";      // ��� ������ apache port, �⺻���� 80
      fileName1 += fileName;   // ���ε�� ������ �̸�
      
      return fileName;

	}
	
	

}
