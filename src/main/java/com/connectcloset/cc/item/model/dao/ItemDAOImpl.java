package com.connectcloset.cc.item.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

@Repository
public class ItemDAOImpl implements ItemDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//희진  새로 나온 상품 시작
	@Override
	public List<Item> newItemList(Item item) {
		return sqlSession.selectList("newItemList", item);
	}
	//희진 새로 나온 상품 끝
	
	//하은 시작
		@Override
	public List<Item> selectItemNumber(int itemNo) {
		return sqlSession.selectList("item.selectItemNumber",itemNo);
	}
	//==하은 끝

	//===================윤지  상품 리스트 시작=======================
	@Override
	public List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectItemImageList", null, rowBounds);
	}
	
	@Override
	public int selectItemCount() {
		return sqlSession.selectOne("item.selectItemCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectItemAndImageBrandList(int cPage, int numPerPage, String brandNo) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectItemAndImageBrandList", brandNo, rowBounds);
	}
	
	@Override
	public int selectBrandItemCount(String brandNo) {
		return sqlSession.selectOne("item.selectBrandItemCount", brandNo);
	}
	
	@Override
	public List<ItemAndImageVO2> selectOuterList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectOuterList", null, rowBounds);
	}
	
	@Override
	public int selectOuterCount() {
		return sqlSession.selectOne("item.selectOuterCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectTopList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectTopList", null, rowBounds);
	}

	@Override
	public int selectTopCount() {
		return sqlSession.selectOne("item.selectTopCount");
	}

	@Override
	public List<ItemAndImageVO2> selectBottomList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectBottomList", null, rowBounds);
	}

	@Override
	public int selectBottomCount() {
		return sqlSession.selectOne("item.selectBottomCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectDressList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectDressList", null, rowBounds);
	}

	@Override
	public int selectDressCount() {
		return sqlSession.selectOne("item.selectDressCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectBagList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectBagList", null, rowBounds);
	}

	@Override
	public int selectBagCount() {
		return sqlSession.selectOne("item.selectBagCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectShoesList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectShoesList", null, rowBounds);
	}

	@Override
	public int selectShoesCount() {
		return sqlSession.selectOne("item.selectShoesCount");
	}
	
	@Override
	public List<ItemAndImageVO2> selectItemAndImageTypeList(int cPage, int numPerPage, String itemTypeNo) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectItemAndImageBrandList", itemTypeNo, rowBounds);
	}

	@Override
	public int selectTypeItemCount(String itemTypeNo) {
		return sqlSession.selectOne("item.selectBrandItemCount", itemTypeNo);
	}
	
	@Override
	public List<ItemAndImageVO2> selectAccList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
		return sqlSession.selectList("item.selectAccList", null, rowBounds);
	}

	@Override
	public int selectAccCount() {
		return sqlSession.selectOne("item.selectAccCount");
	}
	//===================윤지 상품 리스트  끝=======================	
		
		
	//===================주영 상품 상세보기 시작========================


	@Override
	public List<ItemImage> selectitemImagetList(int itmeNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("item.selectitemImagetList",itmeNo);
	}
	@Override
	public ItemAndImageVO2 selectOneitemImage(int itmeNo) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("item.selectOneitemImage",itmeNo);
	}






	//===================주영  상품 상세보기 끝========================


}
