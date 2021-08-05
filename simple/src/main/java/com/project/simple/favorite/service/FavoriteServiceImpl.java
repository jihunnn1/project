package com.project.simple.favorite.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.project.simple.favorite.dao.FavoriteDAO;
import com.project.simple.favorite.vo.FavoriteVO;
import com.project.simple.product.vo.ProductVO;

@Service("favoriteService")
@Transactional(propagation = Propagation.REQUIRED)
public class FavoriteServiceImpl implements FavoriteService{
	
	@Autowired
	private FavoriteDAO favoriteDAO;
	
	public Map<String ,List> myFavoriteList(FavoriteVO favoriteVO) throws Exception{
		Map<String,List> favoriteMap=new HashMap<String,List>();
		List<FavoriteVO> myFavoriteList=favoriteDAO.selectFavoriteList(favoriteVO); //���ɻ�ǰ�������� ǥ���� ���ɻ�ǰ ���� ��ȸ
		if(myFavoriteList.size()==0){ //���ɻ�ǰ�� ����� ��ǰ�̾��� ��� null��ȯ
			return null;
		}
		List<ProductVO> myProductList=favoriteDAO.selectProductList(myFavoriteList); //���ɻ�ǰ �������� ǥ���� ��ǰ������ ��ȸ
		favoriteMap.put("myFavoriteList", myFavoriteList);
		favoriteMap.put("myProductList", myProductList);
		return favoriteMap; //���ɻ�ǰ ������ ��ǰ ������ favoriteMap�� �����Ͽ� ��ȯ
	}

	@Override
	public boolean findFavoriteProduct(FavoriteVO favoriteVO) throws Exception {
		return favoriteDAO.selectCountInFavorite(favoriteVO);
	}//���̺� �߰��ϱ� ���� ������ ��ǰ ��ȣ�� ������ ��ȸ

	@Override
	public void addProductInFavorite(FavoriteVO favoriteVO) throws Exception {
		favoriteDAO.insertProductInFavorite(favoriteVO);
		
	}//���ɻ�ǰ �߰�

	@Override
	public void removeFavoriteProduct(Map<String, Object> map) throws Exception {
		favoriteDAO.deleteFavoriteProduct(map);
		
	}
	@Override
	public void removeFavorite(FavoriteVO favoriteVO) throws Exception {
		favoriteDAO.deleteRemoveFavorite(favoriteVO);
	}//��ǰ������������ �� ���
	
	@Override
	public int favoriteCount(String productNum) throws Exception {
		int favoriteCount = favoriteDAO.selectFavoriteCount(productNum);
		
		return favoriteCount;
	}//���ɻ�ǰ count

	

}
