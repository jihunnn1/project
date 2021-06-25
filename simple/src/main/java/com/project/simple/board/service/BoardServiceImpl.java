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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	//단일 파일 보이기
	@Override
	public ArticleVO viewNotice(int noticeNum) throws Exception {
		ArticleVO articleVO = boardDAO.selectNotice(noticeNum);
		return articleVO;
	}
	
	

	
}	
