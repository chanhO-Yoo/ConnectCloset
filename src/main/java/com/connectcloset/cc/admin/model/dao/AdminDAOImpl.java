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
import com.connectcloset.cc.item.model.vo.ItemQna;
import com.connectcloset.cc.item.model.vo.ItemQnaAns;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;
import com.connectcloset.cc.order.model.vo.Delivery;
import com.connectcloset.cc.order.model.vo.Graph;
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
	
	@Override
	public List<ItemAndImageVO> adminSearchItem(String searchKeyword, int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.adminSearchItem","%"+searchKeyword+"%",rowBounds);
	}
	
	@Override
	public int selectSearchItemCount(String searchKeyword) {
		return sqlSession.selectOne("admin.selectSearchItemCount","%"+searchKeyword+"%");
	}
	
	@Override
	public List<ItemAndImageVO> adminSearchItembyBrand(String brandNo, int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.adminSearchItembyBrand",brandNo,rowBounds);
	}

	@Override
	public int selectItemCount(String brandNo) {
		return sqlSession.selectOne("admin.selectItemCount2",brandNo);
	}

	@Override
	public List<Graph> selectMonthlySales() {
		return sqlSession.selectList("admin.selectMonthlySales");
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
	
	//===================하라 시작==================
	@Override
	public List<ItemQna> selectItemQnaList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage,numPerPage);
		return sqlSession.selectList("admin.selectItemQnaList",null,rowBounds);
	}

	@Override
	public int selectItemQnaListCount() {
		return sqlSession.selectOne("admin.selectItemQnaListCount");
	}

	@Override
	public ItemQna adminItemQna(int itemQnaNo) {
		return sqlSession.selectOne("admin.adminItemQna",itemQnaNo);
	}
	
	
	

	@Override
	public List<ItemQnaAns> adminItemQnaAns(int itemQnaNo) {
		return sqlSession.selectList("admin.adminItemQnaAns",itemQnaNo);
	}

	@Override
	public int adminItemQnaEnd(ItemQnaAns itemQnaAns) {
		return sqlSession.insert("admin.adminItemQnaEnd",itemQnaAns);
	}

	
	
	
	
	//===================하라 끝==================


}
