package com.project.simple.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.project.simple.board.service.BoardService;
import com.project.simple.board.vo.ArticleVO;
import com.project.simple.member.vo.MemberVO;



	
@Controller("boardController")
public class BoardControllerImpl implements BoardController{
		private static final String ARTICLE_IMAGE_REPO = "c:\\spring\\article_image";
		@Autowired
		private BoardService boardService;
		@Autowired
		private ArticleVO articleVO;
		
		@Override
		@RequestMapping(value="board/listNotice.do", method = {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView listNotice(HttpServletRequest request,HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			List<ArticleVO> noticeList = boardService.listNotice();
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("noticeList", noticeList);
			return mav;
		}
		
		//한개 이미지 보여주기
		@RequestMapping(value="/board/viewNotice.do", method=RequestMethod.GET)
		public ModelAndView viewNotice(@RequestParam("noticeNum") int noticeNum,
							HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			articleVO = boardService.viewNotice(noticeNum);
			System.out.println(articleVO);
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			mav.addObject("notice", articleVO);
			return mav;
		}
		
}		