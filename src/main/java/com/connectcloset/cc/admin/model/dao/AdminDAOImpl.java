package com.connectcloset.cc.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;
import com.connectcloset.cc.order.model.vo.Delivery;
import com.connectcloset.cc.order.model.vo.OrderProduct;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	//===================찬호 시작===================
	@Override
	public int enrollItemEnd(Item item) {
		return sqlSession.insert("admin.enrollItem",item);
	}

	@Override
	public int insertItemImage(ItemImage i) {
		return sqlSession.insert("admin.insertItemImage",i);
	}

	@Override
	public List<Item> selectItemList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		
		return sqlSession.selectList("admin.selectItemList",null,rowBounds);
	}

	@Override
	public int selectItemCount() {
		return sqlSession.selectOne("admin.selectItemCount");
	}

	@Override
	public Item selecItemOne(int itemNo) {
		return sqlSession.selectOne("admin.selecItemOne",itemNo);
	}

	@Override
	public List<ItemImage> selectItemImageList(int itemNo) {
		return sqlSession.selectList("admin.selectItemImageList",itemNo);
	}

	@Override
	public List<ItemImage> selectAllItemImageList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.selectAllItemImageList",null,rowBounds);
	}

	@Override
	public List<ItemAndImageVO> selectItemAndImageList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.selectItemAndImageList",null,rowBounds);
	}

	@Override
	public int editItemEnd(Item item) {
		return sqlSession.update("admin.editItemEnd",item);
	}

	@Override
	public int deleteItemImage(int itemNo) {
		return sqlSession.delete("admin.deleteItemImage",itemNo);
	}

	@Override
	public List<PersonalQna> selectPQnaList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.selectPQnaList",null,rowBounds);
	}

	@Override
	public int selectPQnaListCount() {
		return sqlSession.selectOne("admin.selectPQnaListCount");
	}

	@Override
	public PersonalQna adminPQna(int pQnaNo) {
		return sqlSession.selectOne("admin.adminPQna",pQnaNo);
	}

	@Override
	public int adminPQnaEnd(PersonalQnaAns pQnaAns) {
		return sqlSession.insert("admin.adminPQnaEnd",pQnaAns);
	}

	@Override
	public List<PersonalQnaAns> adminPQnaAns(int pQnaNo) {
		return sqlSession.selectList("admin.adminPQnaAns",pQnaNo);
	}
	//===================찬호 끝===================

	//===================하은 시작=================
	@Override
	public List<OrderProduct> selectOrderList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.selectOrderList",null,rowBounds);

	}

	@Override
	public int selectOrderCount() {
		return sqlSession.selectOne("admin.selectOrderCount");
	}
	
	@Override
	public List<OrderProduct> selectOrderList() {

		return sqlSession.selectList("admin.selectOrderList");
	}

	@Override
	public int updatedelivery(String deliveryNo, String orderNo) {
		Map<String,String> map = new HashMap<>();
		map.put("deliveryNo", deliveryNo);
		map.put("orderNo", orderNo);
		return sqlSession.update("admin.updatedelivery",map);
	}


	@Override
	public List<OrderProduct> selectSearchDateList(int startDate) {
		return sqlSession.selectList("admin.selectSearchDateList",startDate);	
	}

	@Override
	public int delivery(String deliveryNo) {
		return sqlSession.selectOne("admin.delivery",deliveryNo);
	}


	//===================하은 끝==================


}
