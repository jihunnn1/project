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
		private static final String ARTICLE_IMAGE_REPO = "c:\\board\\article_image";
		@Autowired
		private BoardService boardService;
		@Autowired
		private ArticleVO articleVO;
		
		@Override
		@RequestMapping(value="board/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView listArticles(HttpServletRequest request,HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			List<ArticleVO> articlesList = boardService.listArticles();
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("articlesList", articlesList);
			System.out.println(articlesList);
			System.out.println(mav);
			return mav;
		}
}		