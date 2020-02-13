package com.connectcloset.cc.item.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.item.model.service.ItemService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO2;
import com.connectcloset.cc.item.model.vo.ItemImage;

@Controller
public class ItemController {
	
	private final static Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	@Autowired
	ItemService itemService;
	
	//===================희진  새로나온 상품시작======================
	
	//타입별 상품 나 열
	
	
	//새로 나온 상품
	@GetMapping("/newItem.do")
	@ResponseBody
	public List<Item> newItem(Item item) {
		List<Item> list = itemService.newItemList(item);
		return list;
	}
	
	//마지막 블로그 글
	//@GetMapping("/latestBlog.do")
	//@ResponseBody
	//public List<Blog> latestBlog(Blog blog) {
	//	List<Blog> blog = blogService.latestBlogList(blog);
		
	//	return blog;
	//}
	
	//===================희진 새로나온 상품  끝======================
	

	//===================주영 상세보기  시작 ======================
	@RequestMapping("/shop/shop-fullwide-sidebar.do")
	public void shoppage() {
		
	}
	
	@RequestMapping("/shop/single-product.do")
	public ModelAndView singleproduct(ModelAndView mav ,@RequestParam("itemNo") int itmeNo){

		logger.debug("itmeNo={}", itmeNo);
		
		ItemAndImageVO2 item
		=itemService.selectOneitemImage(itmeNo);
		
		List<ItemImage> itemImage
		= itemService.selectitemImagetList(itmeNo);
		

		mav.addObject("itemImage",itemImage);
		mav.addObject("item",item);

		logger.debug("@@@@@@itemImage={}", itemImage);
		logger.debug("item@@@@@@={}", item);
		mav.setViewName("/shop/single-product");
		
		return mav;
		}
	
	//===================주영 상세보기 끝======================
	
	//===================윤지 상품 리스트 시작=====================
		@RequestMapping("/shop/shopItemList.do")
		public ModelAndView itemList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage, @RequestParam(defaultValue="a") String brandNo) {

			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = new ArrayList<>();
			int totalContents = 0;
			
			if(brandNo.equals("a")) {
				list = itemService.selectItemAndImageList(cPage, numPerPage);
				totalContents = itemService.selectItemCount();
			}
			else {
				list = itemService.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
				totalContents = itemService.selectBrandItemCount(brandNo);
			}
			
			logger.debug("list={}", list);
			
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/outerList.do")
		public ModelAndView itemOuterList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectOuterList(cPage, numPerPage);
			
			int totalContents = itemService.selectOuterCount();
			
			logger.debug("list={}", list);
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/topList.do")
		public ModelAndView itemTopList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectTopList(cPage, numPerPage);
			
			int totalContents = itemService.selectTopCount();
			
			logger.debug("list={}", list);
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bottomList.do")
		public ModelAndView itemBottomList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBottomList(cPage, numPerPage);
			
			int totalContents = itemService.selectBottomCount();
			
			logger.debug("list={}", list);
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/dressList.do")
		public ModelAndView itemDressList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectDressList(cPage, numPerPage);
			
			int totalContents = itemService.selectDressCount();
			
			logger.debug("list={}", list);
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bagList.do")
		public ModelAndView itemBagList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBagList(cPage, numPerPage);
			
			int totalContents = itemService.selectBagCount();
			
			logger.debug("list={}", list);
			
			logger.debug("totalBoardCount={}", totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		}
		//===================윤지 상품 리스트 끝=====================


