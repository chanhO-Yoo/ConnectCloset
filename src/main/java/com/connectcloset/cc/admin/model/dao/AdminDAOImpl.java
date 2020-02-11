package com.connectcloset.cc.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

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
	public List<ItemAndImageVO2> selectItemAndImageList(int cPage, int numPerPage) {
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

	//===================찬호 끝===================
}
