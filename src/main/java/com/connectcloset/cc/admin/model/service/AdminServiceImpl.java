package com.connectcloset.cc.admin.model.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.connectcloset.cc.admin.model.dao.AdminDAO;
import com.connectcloset.cc.admin.model.exception.AdminException;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemImage;

@Service
public class AdminServiceImpl implements AdminService {

	static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	AdminDAO adminDAO;

	//===================찬호 시작===================
	@Transactional(propagation = Propagation.REQUIRED,
			   isolation=Isolation.READ_COMMITTED,
			   rollbackFor=Exception.class)
	@Override
	public int enrollItemEnd(Item item, List<ItemImage> imageList) {
		int result = 0;
		
		result = adminDAO.enrollItemEnd(item);
		if(result == 0) {
			throw new AdminException("상품등록 오류");
		}
		
		logger.debug("@@생성된 itemNo={}",item.getItemNo());
		
		if(imageList.size()>0) {
			for(ItemImage i : imageList) {
				i.setItemNo(item.getItemNo());
				result = adminDAO.insertItemImage(i);
				if(result == 0) {
					throw new AdminException("상품 첨부파일 등록 오류");
					//컨트롤러에서 예외를 처리해야한다.
				}
			}
		}
		
		return result;
	}
	
	@Override
	public List<Item> selectItemList(int cPage, int numPerPage) {
		return adminDAO.selectItemList(cPage,numPerPage);
	}

	@Override
	public int selectItemCount() {
		return adminDAO.selectItemCount();
	}

	
	//===================찬호 끝===================


	
}
