package com.project.simple.board.service;

import java.util.List;
import java.util.Map;

import com.project.simple.board.vo.ArticleVO;

public interface BoardService {
	
	public List<ArticleVO> listNotice() throws Exception;
	public ArticleVO viewNotice(int noticeNum) throws Exception;
	public List<ArticleVO> listQuestion() throws Exception;
	public List<ArticleVO> listInquiry(String memId) throws Exception;
	public int addNewInquiry(Map articleMap) throws Exception;

}
