package com.project.simple.admin.controller;


import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.simple.admin.service.AdminService;
import com.project.simple.admin.vo.AdminVO;
import com.project.simple.board.vo.ArticleVO;
import com.project.simple.member.vo.MemberVO;
import com.project.simple.page.Criteria;
import com.project.simple.page.PageMaker;
import com.project.simple.member.service.MemberService;
@Controller("adminController")
public class AdminControllerImpl implements AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private MemberService memberService;

	@Autowired
	private AdminVO adminVO;

	@Autowired
	private MemberVO memberVO;

	private ArticleVO articleVO;

	// @Override
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("admin") AdminVO admin, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		adminVO = adminService.login(admin);
		if (adminVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", adminVO);
			session.setAttribute("AdminisLogOn", true);
			mav.setViewName("redirect:/product/admin_listProduct.do");
		} else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/admin_login.do");
		}
		return mav;
	}

	// �α׾ƿ� �۾�
	@RequestMapping(value = "admin/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		session.removeAttribute("AdminisLogOn");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}

	@RequestMapping(value = "/admin_login", method = { RequestMethod.GET, RequestMethod.POST })
	public String admin_login(Model model, HttpSession session) {

		return "admin_login";
	}

	// 1:1���� ��ü ����Ʈ ��������
	@Override
	@RequestMapping(value = "/admin/listAllInquiry.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView listAllInquiry(Criteria cri, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<ArticleVO> listAllInquiry = adminService.listAllInquiry(cri);
		int inquiryCount = adminService.inquiryCount();
		ModelAndView mav = new ModelAndView(viewName);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(inquiryCount);
		mav.addObject("inquiryList", listAllInquiry);
		mav.addObject("pageMaker", pageMaker);
		return mav;
	}

	@RequestMapping(value = "/admin/noticeForm.do", method = RequestMethod.GET)
	private ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	//�������� �����ϱ�
	@RequestMapping(value = "/admin/modNotice.do", method = RequestMethod.POST)
	public ModelAndView inquiryForm(@RequestParam("noticeNum") int noticeNum,
			MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {

		String viewName = (String) multipartRequest.getAttribute("viewName");
		articleVO = adminService.noticeForm(noticeNum);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("noticeNum", articleVO);

		return mav;
	}
	// ȸ���󼼺���
	@RequestMapping(value = "/admin/viewMember.do",  method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView viewMember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String memId = request.getParameter("memId");
		String viewName = (String) request.getAttribute("viewName");
		memberVO = adminService.viewMember(memId);
		session.setAttribute("admin_member", memberVO);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("member", memberVO);
		return mav;
	}
	//������ ȸ������ �����ϱ�
	@RequestMapping(value = "/admin/modMember.do", method = RequestMethod.POST)
	public void admin_modMember(@ModelAttribute("modmember") MemberVO modmember, HttpServletRequest request,
			HttpServletResponse response, RedirectAttributes rAttr) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = adminService.admin_modMember(modmember);
		System.out.println(result);
		session.removeAttribute("admin_member");
		
		if(result == 1) {
			out.println("<script>");
			out.println("alert('ȸ�� ������ �����Ͽ����ϴ�.');");
			out.println("location.href = '/simple/admin_listmember.do';");
			out.println("</script>");
			out.close();
		}
	
	}
	//������ ȸ�� ����
	@RequestMapping(value = "/admin_removeMember.do", method = RequestMethod.GET)
	private ModelAndView admin_removeMember(@RequestParam("memId") String memId, HttpServletRequest request, HttpServletResponse response)  throws Exception{
		ModelAndView mav = new ModelAndView();
		memberVO = memberService.admin_removeMember(memId);
		mav.addObject("memId", memberVO);
		System.out.println(memId);
		mav.setViewName("redirect:/admin_listmember.do");
		return mav;
	}
	
	@RequestMapping(value = "/admin_selectremoveMember.do", method = RequestMethod.POST)
	public ModelAndView admin_selectremoveMember(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
	
				
		ModelAndView mav = new ModelAndView();
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
	
			adminService.admin_selectremoveMember(ajaxMsg[i]);
		}

		mav.setViewName("redirect:/admin_listmember.do");
		return mav;
	}


}
