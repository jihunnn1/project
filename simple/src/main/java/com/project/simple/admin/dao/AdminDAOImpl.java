package com.project.simple.admin.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.simple.admin.vo.AdminVO;
import com.project.simple.board.vo.ArticleVO;
import com.project.simple.member.vo.MemberVO;
import com.project.simple.page.Criteria;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession sqlSession;

	// �α��� ��� ���� �߰�
	public AdminVO adminloginById(AdminVO adminVO) throws DataAccessException {
		AdminVO vo = sqlSession.selectOne("mapper.admin.adminloginById", adminVO);
		return vo;
	}

	// DB���� ��� ���̵� �ش��ϴ� ���� ��ȸ
	@Override
	public MemberVO selectMember(String memId) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.selectMember", memId);
	}

	// Inquiry ��ü ��� ��ȸ
	@Override
	public List<ArticleVO> selectAllInquiryList(Criteria cri) throws DataAccessException {
		List<ArticleVO> inquiryList = sqlSession.selectList("mapper.admin.selectAllInquiryList", cri);
		return inquiryList;
	}

	@Override
	public int selectInquiryCount() throws DataAccessException {
		int inquiryCount = sqlSession.selectOne("mapper.admin.selectInquiryCount");

		return inquiryCount;
	}
	
	// notice �����ϱ�
	@Override
	public ArticleVO selectNotice(int noticeNum) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.selectNotice", noticeNum);
	}

	@Override
	public int updateAdminMember(MemberVO modmember) throws DataAccessException {
		int result = sqlSession.update("mapper.admin.updateAdminMember", modmember);
		return result;
	}

	@Override
	public void deleteSelectRemoveMember(String memId) throws DataAccessException {
		sqlSession.delete("mapper.admin.deleteSelectRemoveMember",memId);
		
	}

}
