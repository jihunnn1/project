package com.project.simple.product.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.project.simple.product.vo.ProductVO;

public interface ProductDAO {
	public List<ProductVO> selectAllProductList() throws DataAccessException;
	public List<ProductVO> admin_selectAllProductList() throws DataAccessException;
	
	public int insertProduct(ProductVO productVO) throws DataAccessException;
	public void deleteProduct(String productNum) throws DataAccessException;
	public ProductVO selectProduct(String productNum) throws DataAccessException;
	public List<String> selectKeywordSearch(String keyword) throws DataAccessException;
	public List<ProductVO> selectProductBySearchWord(String searchWord) throws DataAccessException;

	
}
