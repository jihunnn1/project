package com.project.simple.product.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.simple.product.vo.ProductVO;
import com.project.simple.product.dao.ProductDAO;


@Service("productService")
@Transactional(propagation = Propagation.REQUIRED)
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO productDAO;
	
	@Override
	public List<ProductVO> listProduct() throws Exception{
		List<ProductVO>  productList = productDAO.selectAllProductList();
		return productList;
	}
	@Override
	public List<ProductVO> admin_listProduct() throws Exception {
		List<ProductVO>  productList = productDAO.admin_selectAllProductList();
		return productList;
	}
	@Override
	public int addProduct(ProductVO product) throws DataAccessException {
		return productDAO.insertProduct(product);
	}
	@Override
	public void removeProduct(String productNum) throws DataAccessException{
		productDAO.deleteProduct(productNum);
	}
	@Override
	public ProductVO viewProduct(String productNum) throws Exception {
		ProductVO productVO = productDAO.selectProduct(productNum);
		return productVO;
	}
	@Override
	public List<String> keywordSearch(String keyword) throws Exception {
		List<String> list=productDAO.selectKeywordSearch(keyword);
		return list;
	}
	@Override
	public List<ProductVO> searchProduct(String searchWord) throws Exception {
		List productList=productDAO.selectProductBySearchWord(searchWord);
		return productList;
	}
	@Override
	public ProductVO admin_detailproduct(String productNum) throws Exception {
		ProductVO productVO = productDAO.selectProduct(productNum);
		return productVO;
	}
	@Override
	public void modProduct(Map<String, Object> productMap) {
		// TODO Auto-generated method stub
		
	}
	
}
