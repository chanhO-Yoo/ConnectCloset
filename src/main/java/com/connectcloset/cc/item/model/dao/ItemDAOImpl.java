package com.connectcloset.cc.item.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.item.model.vo.Item;
//20200206 하은생성
@Repository
public class ItemDAOImpl implements ItemDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	/*//==하은 시작
	@Override
	public Item selectItemNumber(String itemNo) {
		return sqlSession.selectOne("item.selectItemNumber",itemNo);
	}
*/
	@Override
	public List<Item> selectItemNumber(int itemNo) {
		return sqlSession.selectList("item.selectItemNumber",itemNo);
	}
	//==하은 끝

}
