package com.project.simple.board.service;

import java.util.List;
import java.util.Map;

import com.project.simple.board.vo.ArticleVO;

public interface BoardService {
	
	public List<ArticleVO> listNotice() throws Exception;
	public ArticleVO viewNotice(int noticeNum) throws Exception;


}
