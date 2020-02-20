package com.connectcloset.cc.item.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.connectcloset.cc.mypage.model.vo.Review;
import com.connectcloset.cc.mypage.model.vo.ReviewList;

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
		
		ItemAndImageVO2 item
		=itemService.selectOneitemImage(itmeNo);
		
		List<ItemImage> itemImage
		= itemService.selectitemImagetList(itmeNo);
		
		List<Review> reviewList
		=itemService.selectReviewList(itmeNo);

		mav.addObject("reviewList",reviewList);
		mav.addObject("itemImage",itemImage);
		mav.addObject("item",item);

		logger.debug("@@@@@@reviewList={}", reviewList);
		logger.debug("item@@@@@@={}", item);
		mav.setViewName("/shop/single-product");
		
		return mav;
		}
	
	//===================주영 상세보기 끝======================
	
	//===================윤지 상품 리스트 시작=====================
	
	@RequestMapping("/shop/shopItemList.do")
	public ModelAndView itemList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage, @RequestParam(defaultValue="a") String brandNo, @RequestParam(defaultValue="a") String itemTypeNo) {

		final int numPerPage = 9;
		
		List<ItemAndImageVO2> list = new ArrayList<>();
		int totalContents = 0;
		
		if(brandNo.equals("a") && itemTypeNo.equals("a")) {
			list = itemService.selectItemAndImageList(cPage, numPerPage);
			totalContents = itemService.selectItemCount();
		}
		else if(brandNo.equals("a") && !itemTypeNo.equals("a")){
			list = itemService.selectItemAndImageTypeList(cPage, numPerPage, itemTypeNo);
			totalContents = itemService.selectTypeItemCount(itemTypeNo);
		}
		else if(!brandNo.equals("a") && !itemTypeNo.equals("a")){
			list = itemService.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
			totalContents = itemService.selectBrandItemCount(brandNo);
		}
		else {
			list = itemService.selectItemAndImageBrandList(cPage, numPerPage, brandNo);
			totalContents = itemService.selectBrandItemCount(brandNo);
		}
		
		if(itemTypeNo.equals("itype-001") || itemTypeNo.equals("itype-010") || itemTypeNo.equals("itype-011") || itemTypeNo.equals("itype-012") || itemTypeNo.equals("itype-013")){
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-001", "아우터");
			categoryMap.put("itype-010", "코트");
			categoryMap.put("itype-011", "조끼");
			categoryMap.put("itype-012", "자켓");
			categoryMap.put("itype-013", "가디건");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 1);
		}
		else if(itemTypeNo.equals("itype-002") || itemTypeNo.equals("itype-003") || itemTypeNo.equals("itype-007") || itemTypeNo.equals("itype-008")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-002", "셔츠");
			categoryMap.put("itype-003", "맨투맨/후드");
			categoryMap.put("itype-007", "니트");
			categoryMap.put("itype-008", "티셔츠");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 2);
		}
		else if(itemTypeNo.equals("itype-004") || itemTypeNo.equals("itype-005")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-004", "팬츠");
			categoryMap.put("itype-005", "진");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 3);
		}
		else if(itemTypeNo.equals("itype-006")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-006", "드레스/스커트");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 4);
		}
		else if(itemTypeNo.equals("itype-0014")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-014", "가방");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 5);
		}
		else if(itemTypeNo.equals("itype-009")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-009", "신발");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 6);
		}
		else if(itemTypeNo.equals("itype-015") || itemTypeNo.equals("itype-016") || itemTypeNo.equals("itype-017") || itemTypeNo.equals("itype-018")) {
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-015", "지갑");
			categoryMap.put("itype-016", "액세서리");
			categoryMap.put("itype-017", "모자");
			categoryMap.put("itype-018", "선글라스");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 7);
		}
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.addObject("brandNo", brandNo);
		mav.addObject("itemTypeNo", itemTypeNo);
		
		mav.setViewName("shop/shopItemList");
		
		return mav;
	}
	

		@RequestMapping("/shop/outerList.do")
		public ModelAndView itemOuterList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectOuterList(cPage, numPerPage);
			
			int totalContents = itemService.selectOuterCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-001", "아우터");
			categoryMap.put("itype-010", "코트");
			categoryMap.put("itype-011", "조끼");
			categoryMap.put("itype-012", "자켓");
			categoryMap.put("itype-013", "가디건");

			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort",1);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "outer");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/topList.do")
		public ModelAndView itemTopList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectTopList(cPage, numPerPage);
			
			int totalContents = itemService.selectTopCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-002", "셔츠");
			categoryMap.put("itype-003", "맨투맨/후드");
			categoryMap.put("itype-007", "니트");
			categoryMap.put("itype-008", "티셔츠");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 2);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "top");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bottomList.do")
		public ModelAndView itemBottomList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBottomList(cPage, numPerPage);
			
			int totalContents = itemService.selectBottomCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-004", "팬츠");
			categoryMap.put("itype-005", "진");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 3);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "bottom");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/dressList.do")
		public ModelAndView itemDressList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectDressList(cPage, numPerPage);
			
			int totalContents = itemService.selectDressCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-006", "드레스/스커트");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 4);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "dress");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/bagList.do")
		public ModelAndView itemBagList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectBagList(cPage, numPerPage);
			
			int totalContents = itemService.selectBagCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-014", "가방");
			
			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 5);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);

			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "bag");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/shoesList.do")
		public ModelAndView itemShoesList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectShoesList(cPage, numPerPage);
			
			int totalContents = itemService.selectShoesCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-009", "신발");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 6);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "shose");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		@RequestMapping("/shop/accList.do")
		public ModelAndView itemAccList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			final int numPerPage = 9;
			
			List<ItemAndImageVO2> list = itemService.selectAccList(cPage, numPerPage);
			
			int totalContents = itemService.selectAccCount();
			
			Map<String,String> categoryMap = new HashMap<>();
			categoryMap.put("itype-015", "지갑");
			categoryMap.put("itype-016", "액세서리");
			categoryMap.put("itype-017", "모자");
			categoryMap.put("itype-018", "선글라스");

			mav.addObject("categoryMap",categoryMap);
			mav.addObject("sort", 7);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.addObject("brandNo", "a");
			mav.addObject("itemTypeNo", "acc");
			
			mav.setViewName("shop/shopItemList");
			
			return mav;
		}
		
		}
		//===================윤지 상품 리스트 끝=====================


