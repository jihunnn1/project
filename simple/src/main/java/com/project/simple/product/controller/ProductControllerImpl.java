package com.project.simple.product.controller;

import java.util.List;
import net.sf.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.simple.product.service.ProductService;
import com.project.simple.product.vo.ProductVO;

@Controller("productController")

public class ProductControllerImpl implements ProductController{
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductVO productVO;
	private static final Logger logger = LoggerFactory.getLogger(ProductControllerImpl.class);

	@Override
	@RequestMapping(value="/addProduct.do", method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("product") ProductVO product, HttpServletRequest request,
			HttpServletResponse response)throws Exception{
		request.setCharacterEncoding("utf-8");
		int result=0;
		result = productService.addProduct(product);
		ModelAndView mav = new ModelAndView("redirect:/main.do");
		return mav;
	}
	
	@RequestMapping(value = "/add_product.do", method = RequestMethod.GET)
	private ModelAndView add_product(HttpServletRequest request, HttpServletResponse response)  {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value="product/listProduct.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List<ProductVO> productList = productService.listProduct();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("productList", productList);
		return mav;
	}

	@Override
	public ModelAndView removeProduct(String ProductNum, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(value="/product/viewProduct.do", method=RequestMethod.GET)
	public ModelAndView viewProduct(@RequestParam("productNum") String productNum, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		productVO = productService.viewProduct(productNum);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("product", productVO);
		System.out.println(productVO);
		return mav;
		
	}
	@RequestMapping(value="/keywordSearch.do",method = RequestMethod.GET,produces = "application/text; charset=utf8")//브라우저로 전송하는 json데이터의 한글 인코딩을 지정
	public @ResponseBody String  keywordSearch(@RequestParam("keyword") String keyword,//검색할 키워드 가져옴
			                                  HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//System.out.println(keyword);
		if(keyword == null || keyword.equals(""))
		   return null ;
	
		keyword = keyword.toUpperCase();
	    List<String> keywordList =productService.keywordSearch(keyword);// 가져온 키워드가 포함된 상품 제목 조회
	    
	    // 최종 완성될 JSONObject 선언(전체)
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("keyword", keywordList); //조회한 데이터를 json에 저장
		 		
	    String jsonInfo = jsonObject.toString(); //json을 문자열로 변환한 후 브라우저로 출력
	    //System.out.println(jsonInfo);
	    return jsonInfo ;
	}
	
	@RequestMapping(value="/searchProduct.do" ,method = RequestMethod.GET)
	public ModelAndView searchProduct(@RequestParam("searchWord") String searchWord,
			                       HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName=(String)request.getAttribute("viewName");
		List<ProductVO> productList=productService.searchProduct(searchWord); // 검색창에서 가져온 단어가 포함된 상품 제목을 조회
		
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("productList", productList);
		return mav;
		
	}
	

}