package com.connectcloset.cc.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.admin.model.service.AdminService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;
import com.connectcloset.cc.order.model.vo.Delivery;
import com.connectcloset.cc.order.model.vo.OrderProduct;
import com.connectcloset.cc.personalQna.model.vo.PersonalQna;
import com.connectcloset.cc.personalQna.model.vo.PersonalQnaAns;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonView;

@Controller
public class AdminController {

	
	private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/admin/enrollItem.do")
	public void enrollItem() {
		
	}
	
	//===================찬호 시작===================
	@PostMapping("/admin/enrollItemEnd.do")
	public ModelAndView enrollItemEnd(ModelAndView mav, Item item, @RequestParam(value="upFile",required=false) MultipartFile[] upFile, HttpServletRequest request) {
		try {
		logger.debug("아이템 등록 요청!!");
		logger.debug("item={}",item);
		logger.debug("upFile={}",upFile);
		
		//파일 저장 경로 설정
		String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/upload/item");
		List<ItemImage> imageList = new ArrayList<>();
		
		//동적으로 directory생성하기 - directory를 한개만 생성가능(현재 2개를 생성해야 해야되서 src/main/webapp/resources에 upload폴더 생성 후 정상 작동 -> board폴더는 mkdir로 생성가능)
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdir();
		}
		
		for(MultipartFile f : upFile) {
			if(!f.isEmpty()) {
				//파일명 재지정
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rndNum = (int)(Math.random()*1000);
				
				String renamedFileName = sdf.format(new Date())+"_"+rndNum+ext;
				
				//서버컴퓨터에 파일 저장
				try {
					f.transferTo(new File(saveDirectory+"/"+renamedFileName));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				ItemImage itemImage = new ItemImage();
				itemImage.setItemImageOriginName(originalFileName);
				itemImage.setItemImageReName(renamedFileName);
				imageList.add(itemImage);
				
			}
			
			
		}
		logger.debug("imageList={}",imageList);
		//MultipartFile객체 파일 업로드 처리 종료.......
		
		int result = adminService.enrollItemEnd(item,imageList);
		logger.debug("result={}",result);
		
		
		mav.addObject("msg",result>0?"아이템 등록 성공.":"아이템 등록 실패.");
		mav.addObject("loc","/admin/itemList2.do");
		mav.setViewName("common/msg");
		}catch(Exception e) {
			logger.error(e.getMessage(),e);
			throw e;
		}
		return mav;
	}
	
	@RequestMapping("/admin/itemList.do")
	public ModelAndView itemList2(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
		
		final int numPerPage = 9;
		
		List<ItemAndImageVO> list = adminService.selectItemAndImageList(cPage,numPerPage);
		logger.debug("list={}",list);
		
		
		
//		List<Item> list = adminService.selectItemList(cPage,numPerPage);
//		logger.debug("list={}",list);
//		
//		List<ItemImage> imageList = adminService.selectAllItemImageList(cPage,numPerPage);
//		logger.debug("imageList={}",imageList);
		
		int totalContents = adminService.selectItemCount();
		logger.debug("totalBoardCount={}",totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.setViewName("admin/itemList");

		return mav;
	}
	
	@RequestMapping("/admin/editItem.do")
	public ModelAndView editItem(ModelAndView mav,@RequestParam int itemNo) {
		logger.debug("상품 수정 시작...");
		
		Item item = adminService.selecItemOne(itemNo);
		logger.debug("Item={}",item);
		
		List<ItemImage> imageList = new ArrayList<>();
		imageList = adminService.selectItemImageList(itemNo);
		
		logger.debug("imageList={}",imageList);
		
		mav.addObject("item",item);
		mav.addObject("imageList",imageList);
		
		mav.setViewName("admin/editItem");
		
		return mav;
	}
	
	@RequestMapping("/admin/editItemEnd.do")
	public ModelAndView editItemEnd(ModelAndView mav, Item item, @RequestParam(value="upFile",required=false) MultipartFile[] upFile, HttpServletRequest request) {
		try {
		logger.debug("아이템 수정 요청!!");
		logger.debug("item={}",item);
		logger.debug("upFile={}",upFile);
		
		//파일 저장 경로 설정
		String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/upload/item");
		List<ItemImage> imageList = new ArrayList<>();
		
		//동적으로 directory생성하기 - directory를 한개만 생성가능(현재 2개를 생성해야 해야되서 src/main/webapp/resources에 upload폴더 생성 후 정상 작동 -> board폴더는 mkdir로 생성가능)
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdir();
		}
		
		for(MultipartFile f : upFile) {
			if(!f.isEmpty()) {
				//파일명 재지정
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rndNum = (int)(Math.random()*1000);
				
				String renamedFileName = sdf.format(new Date())+"_"+rndNum+ext;
				
				//서버컴퓨터에 파일 저장
				try {
					f.transferTo(new File(saveDirectory+"/"+renamedFileName));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				ItemImage itemImage = new ItemImage();
				itemImage.setItemImageOriginName(originalFileName);
				itemImage.setItemImageReName(renamedFileName);
				imageList.add(itemImage);
			}
		}
		
		logger.debug("isEmpty={}",imageList.isEmpty());
		
		if(imageList.isEmpty() == true) {
			int itemNo = item.getItemNo();
			
			imageList = adminService.selectItemImageList(itemNo);
		}
		
		logger.debug("imageList={}",imageList);
		//MultipartFile객체 파일 업로드 처리 종료.......
		
		int result = adminService.editItemEnd(item,imageList);
		logger.debug("result={}",result);
		
		
		mav.addObject("msg",result>0?"상품 수정 성공.":"상품 수정 실패.");
		mav.addObject("loc","/admin/itemList2.do");
		mav.setViewName("common/msg");
		}catch(Exception e) {
			logger.error(e.getMessage(),e);
			throw e;
		}
		return mav;
	}
	
	@RequestMapping("/admin/adminPQnaList.do")
	public ModelAndView adminPQnaList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
		
		final int numPerPage = 10;
		
		List<PersonalQna> list = adminService.selectPQnaList(cPage,numPerPage);
		logger.debug("list={}",list);
		
		int totalContents = adminService.selectPQnaListCount();
		logger.debug("totalBoardCount={}",totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.setViewName("admin/adminPQnaList");
		
		return mav;
	}
	
	@RequestMapping("/admin/adminPQna.do")
	public ModelAndView adminPQna(ModelAndView mav, @RequestParam int pQnaNo) {
		
		PersonalQna pQna = adminService.adminPQna(pQnaNo);
		logger.debug("pQna={}",pQna);
		
		List<PersonalQnaAns> pQnaAnsList = adminService.adminPQnaAns(pQnaNo);
		logger.debug("pQnaAnsList={}",pQnaAnsList);
		
		mav.addObject("pQna",pQna);
		mav.addObject("pQnaAnsList",pQnaAnsList);
		
		mav.setViewName("admin/adminPQna");
		
		return mav;
	}
	
	@PostMapping("/admin/adminPQnaEnd.do")
	public ModelAndView adminPQnaEnd(ModelAndView mav, PersonalQnaAns pQnaAns) {
		logger.debug("pQnaAns={}",pQnaAns);
		
		int result = adminService.adminPQnaEnd(pQnaAns);
		logger.debug("result={}",result);
		
		mav.addObject("msg",result>0?"1대1문의 답변작성 성공.":"1대1문의 답변작성 실패.");
		mav.addObject("loc","/admin/adminPQnaList.do");
		mav.setViewName("common/msg");
		
		return mav;
	}
	@RequestMapping("/admin/adminSearchItem.do")
	@ResponseBody
	public Map<String,Object> adminSearchItem(ModelAndView mav, String searchKeyword,  @RequestParam(defaultValue="1") int cPage) {
		logger.debug("searchKeyword={}",searchKeyword);
		
		Map<String, Object> map = new HashMap<>();
		
		final int numPerPage = 9;
				
		List<ItemAndImageVO> list = adminService.adminSearchItem(searchKeyword,cPage,numPerPage);
		logger.debug("searchList={}",list);
		
		int totalContents = adminService.selectSearchItemCount(searchKeyword);
		logger.debug("totalBoardCount={}",totalContents);
		
		map.put("list",list);
		map.put("numPerPage",numPerPage);
		map.put("cPage",cPage);
		map.put("totalContents", totalContents);
		
		logger.debug("여기까지는 왔냐???");
		
		return map;
	}
	
	@RequestMapping("/admin/adminSearchItembyBrand.do")
	public ModelAndView adminSearchItembyBrand(ModelAndView mav, @RequestParam String brandNo, @RequestParam(defaultValue="1") int cPage) {
		logger.debug("brandNO={}",brandNo);
		
		final int numPerPage = 9;
		
		List<ItemAndImageVO> list = adminService.adminSearchItembyBrand(brandNo,cPage,numPerPage);
		logger.debug("list={}",list);
		
		int totalContents = adminService.selectItemCount(brandNo);
		logger.debug("totalBoardCount={}",totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		mav.setViewName("admin/itemList");
		
		return mav;
	}
	
	
	//===================찬호 끝===================

	//===================하은 시작===================
	/*	@RequestMapping("/admin/deliveryList.do")
		public ModelAndView deliveryList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			
			final int numPerPage = 9;
			
			List<Item> list = adminService.selectItemList(cPage,numPerPage);
			logger.debug("list={}",list);
			
			int totalContents = adminService.selectItemCount();
			logger.debug("totalBoardCount={}",totalContents);
			
			mav.addObject("list", list);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("admin/deliveryList");
			return mav;
		}
		*/
	
		//주문배송
		@RequestMapping("/admin/deliveryList.do")
		//@ResponseBody
		public ModelAndView deliveryList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
			
			final int numPerPage = 9;
			
			List<OrderProduct> list = adminService.selectOrderList(cPage,numPerPage);
			logger.debug("list={}",list);
			
			int totalContents = adminService.selectOrderCount();
			logger.debug("totalBoardCount={}",totalContents);
			
			int[] deliArr = {0,0,0,0,0,0,0,0};
			
			 deliArr[0] = adminService.delivery("os-001");//주문완료
			 deliArr[1] = adminService.delivery("os-002");//구매확정
			 deliArr[2] = adminService.delivery("os-003");//주문취소
			 deliArr[3] = adminService.delivery("os-004");//상품교환
			 deliArr[4] = adminService.delivery("os-005");//상품반품
			 deliArr[5] = adminService.delivery("deli-001");//배송준비중
			 deliArr[6] = adminService.delivery("deli-002");//배송중
			 deliArr[7] = adminService.delivery("deli-003");//배송완료
		
			logger.debug("deliArr={}",deliArr);
			
			mav.addObject("list", list);
			mav.addObject("deliArr",deliArr);
			mav.addObject("numPerPage", numPerPage);
			mav.addObject("cPage", cPage);
			mav.addObject("totalContents", totalContents);
			
			mav.setViewName("admin/deliveryList");	
			return mav;
		}
		
		//주문배송 - 주문,배송상태 처리
		@RequestMapping("/admin/changedelivery.do")
		public ModelAndView changeDelivery(ModelAndView mav,
			@RequestParam String deliveryNo,
			@RequestParam String orderNo) {
				
			int result = adminService.updatedelivery(deliveryNo,orderNo);
			logger.debug("result={}",result);
				
			mav.addObject(result);
			mav.setViewName("redirect:/admin/deliveryList.do");
				
				return mav;
			}
			
		@RequestMapping("/admin/searchDate/deliveryList.do")
		@ResponseBody
		private List<OrderProduct> deliverySearch(@RequestParam int startDate) {
			logger.debug("startDate={}",startDate);
			
			List<OrderProduct> list = adminService.selectSearchDateList(startDate);
			logger.debug("list={}",list);
			
			return list;
			
		}
		
		
		
			/*//db에서 order_product테이블 내용을 불러와 deliveryList.jsp출력
			@RequestMapping("/admin/deliveryList.do")
			public ModelAndView admin(ModelAndView mav) {
				logger.debug("adminService={}", adminService.getClass().toString());
				
				
				List<OrderProduct> orderList = adminService.selectOrderList();
				mav.addObject("orderList",orderList);
						
				mav.setViewName("admin/deliveryList");
				
				
				return mav;
			}
				*/

		//===================하은 끝===================
}
