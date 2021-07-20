package com.project.simple.cart.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.simple.cart.service.CartService;
import com.project.simple.cart.vo.CartVO;
import com.project.simple.member.vo.MemberVO;
import com.project.simple.order.vo.OrderVO;

@Controller("cartController")
public class CartControllerImpl implements CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private CartVO cartVO;
	@Autowired
	private MemberVO memberVO;

	// ��ٱ����̵�(ȸ��/��ȸ��)
	@RequestMapping(value = "/cartall.do", method = RequestMethod.GET)
	private ModelAndView cartall(@ModelAttribute("cartVO") CartVO cartVO, HttpServletRequest request,
			HttpServletResponse response, RedirectAttributes redirect) throws Exception {
		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		Boolean isLogOn = (Boolean) session.getAttribute("isLogOn");

		if (isLogOn == null || isLogOn == false) {

			List<CartVO> list = (ArrayList) session.getAttribute("cartlist");
			if (list == null) {
				list = new ArrayList<CartVO>();
				session.setAttribute("cartlist", list);
			}
			list.add(cartVO);
			System.out.println(cartVO);
			mav.setViewName("redirect:/nonmemcart.do");

		} else if (isLogOn == true) {

			MemberVO membervo = (MemberVO) session.getAttribute("member");
			String memId = membervo.getmemId();
			cartVO.setMemId(memId);
			int result = 0;
			result = cartService.addcartlist(cartVO);
			List<CartVO> cartlist = cartService.selectcartlist(memId);

			
			mav.setViewName("redirect:/cart.do");
		}

		return mav;
	}

	// ��ٱ����̵�(��ȸ��)
	@RequestMapping(value = "/nonmemcart.do", method = RequestMethod.GET)
	private ModelAndView nonmemcart(@ModelAttribute("orderVO") OrderVO orderVO, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
		return mav;
	}

	// ��ٱ����̵�(ȸ��)
	@RequestMapping(value = "/memcart.do", method = RequestMethod.GET)
	private ModelAndView memcart(@ModelAttribute("orderVO") OrderVO orderVO, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart");
		return mav;
	}

	@RequestMapping(value = "/removeCartProduct.do", method = RequestMethod.POST)
	public ModelAndView removeCartProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for (int i = 0; i < size; i++) {
			cartService.removeCartProduct(ajaxMsg[i]);
		}

		mav.setViewName("redirect:/mypage_08.do");
		return mav;
	}

}