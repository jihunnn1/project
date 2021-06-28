package com.project.simple.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.simple.product.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ProductVO> selectAllProductList() throws DataAccessException{
		List<ProductVO> productList = sqlSession.selectList("mapper.product.selectAllProductList");
		return productList;
	}
	
	@Override
	public int insertProduct(ProductVO productVO)throws DataAccessException{
		int result=sqlSession.insert("mapper.product.insertProduct", productVO);
		return result;
	}
	
	@Override
	public int deleteProduct(String productNum) throws DataAccessException{
		int result=sqlSession.delete("mapper.product.deleteProduct", productNum);
		return result;
	}

	@Override
	public ProductVO selectProduct(String productNum) throws DataAccessException {
		return sqlSession.selectOne("mapper.product.selectProduct", productNum);
	}


}
