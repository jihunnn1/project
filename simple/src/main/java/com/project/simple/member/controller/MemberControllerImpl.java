package com.project.simple.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.simple.member.service.MemberService;
import com.project.simple.member.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller("memberController")
public class MemberControllerImpl implements MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "404";
	}

	// ¸â¹ö·Î±×ÀÎÀÛ¾÷ ppt226
	// @Override
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.login(member);
		if (memberVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", memberVO);
			session.setAttribute("isLogOn", true);
			mav.setViewName("redirect:/main.do");
		} else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/login_01.do");
		}
		return mav;
	}

	// ·Î±×¾Æ¿ô ÀÛ¾÷
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");	
		return mav;
	}

	
	//È¸¿øÅ»ÅðÀÛ¾÷
	@RequestMapping(value="/removeMember.do" ,method = RequestMethod.POST)
	public ModelAndView removeMember(@ModelAttribute("removemember")  MemberVO removemember,
			           HttpServletRequest request, HttpServletResponse response, RedirectAttributes rAttr) throws Exception{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("member");
		String sessionmemPwd = member.getmemPwd();
		String memPwd = removemember.getmemPwd();
		
		if(!(sessionmemPwd.equals(memPwd))) {
			rAttr.addAttribute("result", false);
			ModelAndView mav = new ModelAndView("redirect:/deletemember.do");
			return mav;
		} 
		
		int result = memberService.removeMember(removemember);
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView("redirect:/drop_out.do");
		return mav; 
		
		
	}
	
	
	@RequestMapping(value = "/drop_out.do", method = RequestMethod.GET)
	private ModelAndView drop_out(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/deletemember.do", method = RequestMethod.GET)
	private ModelAndView deletemember(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	private ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/login_01.do", method = RequestMethod.GET)
	private ModelAndView login_01(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/mypage_10.do", method = RequestMethod.GET)
	private ModelAndView mypage_10(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/mypage_01.do", method = RequestMethod.GET)
	private ModelAndView mypage_01(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/join_02.do", method = RequestMethod.GET)
	private ModelAndView join_02(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/join_01.do", method = RequestMethod.GET)
	private ModelAndView join_01(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value = "/storeinfomation.do", method = RequestMethod.GET)
	private ModelAndView storeinfomation(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value = "/addMembers.do", method = RequestMethod.POST)
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/join_02.do");
		return mav;
	}

	@Override
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
