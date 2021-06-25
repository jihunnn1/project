package com.project.simple.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import com.project.simple.board.dao.BoardDAO;
import com.project.simple.board.vo.ArticleVO;


@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)

public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	public List<ArticleVO> listNotice() throws Exception{
		List<ArticleVO> noticeList = boardDAO.selectAllNoticeList();
		return noticeList;
	}
	
}	
