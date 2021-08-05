package com.project.simple.admin.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.simple.admin.dao.AdminDAO;
import com.project.simple.admin.vo.AdminVO;
import com.project.simple.board.vo.ArticleVO;
import com.project.simple.member.vo.MemberVO;
import com.project.simple.page.Criteria;

@Service("adminService")
@Transactional(propagation = Propagation.REQUIRED)
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;

	// �α��� ��� ���� �߰�
	@Override
	public AdminVO login(AdminVO adminVO) throws Exception {
		return adminDAO.adminloginById(adminVO);
	}

	// ����󼼺���
	@Override
	public MemberVO viewMember(String memId) throws Exception {
		MemberVO memberVO = adminDAO.selectMember(memId);

		return memberVO;
	}
	
	//1:1���� ��ü�� ��ȸ
	public List<ArticleVO> listAllInquiry(Criteria cri) throws Exception{
		List<ArticleVO> inquiryList = adminDAO.selectAllInquiryList(cri);
		return inquiryList;
	}
	
	public int inquiryCount() throws Exception{
		int inquiryCount = adminDAO.selectInquiryCount();
		return inquiryCount;
	}
	
	//�������� �����ϱ�
	@Override
	public ArticleVO noticeForm(int noticeNum) throws Exception {
		ArticleVO articleVO = adminDAO.selectNotice(noticeNum);
		return articleVO;
	}

	@Override
	public int admin_modMember(MemberVO modmember) throws DataAccessException {
		return adminDAO.updateAdminMember(modmember);
	}

	@Override
	public void admin_selectremoveMember(String memId) throws Exception {
		adminDAO.deleteSelectRemoveMember(memId);
		
	}


}
