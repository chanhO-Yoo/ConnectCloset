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
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.item.model.vo.ItemQna;
import com.connectcloset.cc.itemQna.model.vo.ItemQnaAns;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;
import com.connectcloset.cc.order.model.vo.Delivery;
import com.connectcloset.cc.order.model.vo.OrderProduct;

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

	@Override
	public Item selecItemOne(int itemNo) {
		return adminDAO.selecItemOne(itemNo);
	}

	@Override
	public List<ItemImage> selectItemImageList(int itemNo) {
		return adminDAO.selectItemImageList(itemNo);
	}

	@Override
	public List<ItemImage> selectAllItemImageList(int cPage, int numPerPage) {
		return adminDAO.selectAllItemImageList(cPage,numPerPage);
	}

	@Override
	public List<ItemAndImageVO> selectItemAndImageList(int cPage, int numPerPage) {
		return adminDAO.selectItemAndImageList(cPage,numPerPage);
	}
	
	@Transactional(propagation = Propagation.REQUIRED,
			   isolation=Isolation.READ_COMMITTED,
			   rollbackFor=Exception.class)
	@Override
	public int editItemEnd(Item item, List<ItemImage> imageList) {
		int result = 0;
		
		result = adminDAO.editItemEnd(item);
		if(result == 0) {
			throw new AdminException("상품수정 오류");
		}
		
		logger.debug("itemNo={}",item.getItemNo());
		
		result = adminDAO.deleteItemImage(item.getItemNo());
		
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
	public List<PersonalQna> selectPQnaList(int cPage, int numPerPage) {
		return adminDAO.selectPQnaList(cPage,numPerPage);
	}

	@Override
	public int selectPQnaListCount() {
		return adminDAO.selectPQnaListCount();
	}

	@Override
	public PersonalQna adminPQna(int pQnaNo) {
		return adminDAO.adminPQna(pQnaNo);
	}

	@Override
	public int adminPQnaEnd(PersonalQnaAns pQnaAns) {
		return adminDAO.adminPQnaEnd(pQnaAns);
	}

	@Override
	public List<PersonalQnaAns> adminPQnaAns(int pQnaNo) {
		return adminDAO.adminPQnaAns(pQnaNo);
	}

	@Override
	public List<ItemAndImageVO> adminSearchItem(String searchKeyword, int cPage, int numPerPage) {
		return adminDAO.adminSearchItem(searchKeyword,cPage,numPerPage);
	}
	
	@Override
	public int selectSearchItemCount(String searchKeyword) {
		return adminDAO.selectSearchItemCount(searchKeyword);
	}
	
	@Override
	public List<ItemAndImageVO> adminSearchItembyBrand(String brandNo, int cPage, int numPerPage) {
		return adminDAO.adminSearchItembyBrand(brandNo,cPage,numPerPage);
	}

	@Override
	public int selectItemCount(String brandNo) {
		return adminDAO.selectItemCount(brandNo);
	}
	//===================찬호 끝===================


	//===================하은 시작===================

	@Override
	public List<OrderProduct> selectOrderList(int cPage, int numPerPage) {
		return adminDAO.selectOrderList(cPage,numPerPage);
	}

	@Override
	public int selectOrderCount() {
		return adminDAO.selectOrderCount();
	}

	@Override
	public List<OrderProduct> selectOrderList() {
		return adminDAO.selectOrderList();
	}

	@Override
	public int updatedelivery(String deliveryNo, String orderNo) {
		return adminDAO.updatedelivery(deliveryNo,orderNo);
	}

	@Override
	public List<OrderProduct> selectSearchDateList(int startDate) {
		return adminDAO.selectSearchDateList(startDate);
	}

	@Override
	public int delivery(String deliveryNo) {
		return  adminDAO.delivery(deliveryNo);
	}

	
	//===================하은 끝===================
	
	//===================하라 시작===================
	@Override
	public List<ItemQna> selectIQnaList(int cPage, int numPerPage) {
		return adminDAO.selectIQnaList(cPage,numPerPage);
	}

	@Override
	public int selectIQnaListCount() {
		return adminDAO.selectIQnaListCount();
	}

	@Override
	public ItemQna adminIQna(int iQnaNo) {
		return adminDAO.adminIQna(iQnaNo);
	}

	@Override
	public List<ItemQnaAns> adminIQnaAns(int iQnaNo) {
		return adminDAO.adminIQnaAns(iQnaNo);
	}

	@Override
	public int adminIQnaEnd(ItemQnaAns iQnaAns) {
		return adminDAO.adminIQnaEnd(iQnaAns);
	}


	
	
	
	//===================하라 끝===================
	
}
