package com.project.simple.product.controller;

import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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

	

	@Override //상품등록하기
	@RequestMapping(value="product/addProduct.do", method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute("product") ProductVO product, HttpServletRequest request,
			HttpServletResponse response)throws Exception{
		request.setCharacterEncoding("utf-8");
		int result=0;
		result = productService.addProduct(product);
		ModelAndView mav = new ModelAndView("redirect:/product/admin_listProduct.do");
		return mav;
	}
	
	@RequestMapping(value = "product/add_product.do", method = RequestMethod.GET)
	private ModelAndView add_product(HttpServletRequest request, HttpServletResponse response)  {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	

	@Override //상품목록 조회
	@RequestMapping(value="product/listProduct.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List<ProductVO> productList = productService.listProduct();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("productList", productList);
		return mav;
	}
	
	@Override //관리자 상품목록 조회
	@RequestMapping(value="product/admin_listProduct.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView admin_listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List<ProductVO> admin_productList = productService.admin_listProduct();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("admin_productList", admin_productList);
		return mav;
	}
	/*@RequestMapping(value="/product/modProduct.do", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity modProduct(MultipartHttpServletRequest multipartRequest,
			HttpServletResponse response)throws Exception{
		multipartRequest.setCharacterEncoding("utf-8");
		Map<String, Object> ProductMap = new HashMap<String, Object>();
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			ProductMap.put(name, value);
		}
		
		String productNum = (String)ProductMap.get("productNum");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			productService.modProduct(ProductMap);
			if(imageFileName!= null && imageFileName.length()!=0) {
				File srcFile = new File(ARTICLE_IMAGE_REPO + "\\" +"temp"+"\\"+imageFileName);
				File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
				FileUtils.moveFileToDirectory(srcFile, destDir, true);
				
				String originalFileName = (String)articleMap.get("originalFileName");
				File oldFile = new File(ARTICLE_IMAGE_REPO+ "\\"+ articleNO+"\\"+originalFileName);
				oldFile.delete();
			}
			message ="<script>";
			message += "alert('상품을 수정했습니다.');";
			message += "location.href'"+multipartRequest.getContextPath()+"/product/admin_detailproduct.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders,HttpStatus.CREATED);
			} catch (Exception e) {
				//File srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+"temp"+"\\"+imageFileName);
				//srcFile.delete();
				message ="<script>";
				message += "alert('오류가 발생했습니다. 다시 수정해주세요');";
				message += "location.href'"+multipartRequest.getContextPath()+"/board/viewArticle.do?articleNO="+productNum+"';";
				message += "</script>";
				resEnt = new ResponseEntity(message, responseHeaders,HttpStatus.CREATED);
			}
		return resEnt;
		}*/
	
	@Override
	@RequestMapping(value="/product/removeProduct.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity removeProduct(@RequestParam("productNum") String productNum, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			productService.removeProduct(productNum);

			message = "<script>";
			message+= " alert('상품을 삭제했습니다.');";
			message += "  location.href='" + request.getContextPath() + "/product/admin_listProduct.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);	
			
		}catch(Exception e) {
				
			message = "<script>";
			message+= " alert('오류가 발생했습니다. 다시 시도해주세요');";
			message += "  location.href='" + request.getContextPath() + "/product/admin_listProduct.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
			}
		return resEnt;
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
	
	@RequestMapping(value="product/admin_detailproduct.do", method = RequestMethod.GET)
	public ModelAndView admin_detailproduct(@RequestParam("productNum") String productNum, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		productVO = productService.viewProduct(productNum);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("product", productVO);
		System.out.println(productVO);
		return mav;
	}
	
	//키워드 검색
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