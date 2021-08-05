package com.project.simple.cart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.project.simple.cart.vo.CartVO;
import com.project.simple.product.vo.ProductVO;

@Repository("cartDAO")
public class CartDAOImpl implements  CartDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CartVO> selectCartList(String memId) throws DataAccessException {
		List<CartVO> cartList = sqlSession.selectList("mapper.cart.selectCartList",memId);
		return cartList;
	}

	@Override
	public List<ProductVO> selectProductList(List<CartVO> cartList) throws DataAccessException {
		List<ProductVO> myProductList;
		myProductList = sqlSession.selectList("mapper.cart.selectProductList",cartList);
		return myProductList;
	}

	@Override
	public boolean selectCountInCart(CartVO cartVO) throws DataAccessException {
		String result=sqlSession.selectOne("mapper.cart.selectCountInCart",cartVO);
		return Boolean.parseBoolean(result);
	}//�̹� ��ٱ��� �߰��� ��ǰ���� ��ȸ


	public int insertcartlist(CartVO cartVO) throws DataAccessException {
		int result=sqlSession.insert("mapper.cart.insertcartlist", cartVO);
		return result;
	}
	

	private int selectMaxCartId() throws DataAccessException{
		int memCartId = sqlSession.selectOne("mapper.cart.selectMaxCartId");
		return memCartId;
	}

	
	//�ֹ��Ϸ��� ���� ��ٱ����� ����
	@Override 
	public void deleteCompleteCartlist(String memCartId) throws DataAccessException{
		sqlSession.delete("mapper.cart.deleteCompleteCartlist",memCartId);
	}
	
	//��ٱ��� ���ø�� ����
	@Override
	public void deleteCartProduct(String memCartId) throws DataAccessException {
		sqlSession.delete("mapper.cart.deleteCartProduct",memCartId);
		
	}

}
