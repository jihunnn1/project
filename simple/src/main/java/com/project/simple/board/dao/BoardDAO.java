package com.project.simple.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.dao.DataAccessException;

import com.project.simple.board.vo.ArticleVO;
import com.project.simple.member.vo.MemberVO;
import com.project.simple.page.Criteria;


public interface BoardDAO{
	public List selectAllNoticeList(Criteria cri) throws DataAccessException;
	
	public ArticleVO selectNotice(int noticeNum) throws DataAccessException;
	public int selectNoticeCount() throws DataAccessException;
	
	public List selectAllQuestionList(Criteria cri) throws DataAccessException;
	public int selectQuestionCount() throws DataAccessException;
	public List<ArticleVO> questionSearchList(Map<String ,Object> questionSearchMap) throws DataAccessException;
	public int questionSeachCount(String search) throws DataAccessException;
	
	public List<ArticleVO> selectInquiryList(Map<String ,Object> inquiryMap) throws DataAccessException;
	public int selectInquiryCount(String memId) throws DataAccessException;
	
	public int insertNewInquiry(Map inquiryMap) throws DataAccessException;
	
	public ArticleVO selectInquiry(int inquiryNum) throws DataAccessException;
	
	
	public ArticleVO selectInquiry1(int inquiryNum) throws DataAccessException;

	public void updateInquiry(Map inquiryMap) throws DataAccessException ;
	
	public void deleteInquiry(int inquiryNum) throws DataAccessException;
}