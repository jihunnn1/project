package com.project.simple.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface BoardController {
	
	public ModelAndView listNotice(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView viewNotice(@RequestParam("noticeNum") int noticeNum,
			HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView listQuestion(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView listInquiry(@RequestParam("memId") String memId,HttpServletRequest request, HttpServletResponse response) throws Exception;
}
