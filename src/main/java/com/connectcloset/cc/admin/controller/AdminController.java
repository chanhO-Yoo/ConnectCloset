package com.connectcloset.cc.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.admin.model.service.AdminService;
import com.connectcloset.cc.item.model.vo.Item;
import com.connectcloset.cc.item.model.vo.ItemAndImageVO;
import com.connectcloset.cc.item.model.vo.ItemImage;

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
	public ModelAndView itemList(ModelAndView mav, @RequestParam(defaultValue="1") int cPage) {
		
		final int numPerPage = 9;
		
		List<Item> list = adminService.selectItemList(cPage,numPerPage);
		logger.debug("list={}",list);
		
		List<ItemImage> imageList = adminService.selectAllItemImageList(cPage,numPerPage);
		logger.debug("imageList={}",imageList);
		
		int totalContents = adminService.selectItemCount();
		logger.debug("totalBoardCount={}",totalContents);
		
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.addObject("imageList",imageList);
		
		mav.setViewName("admin/itemList");

		
		return mav;
	}
	
	@RequestMapping("/admin/itemList2.do")
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
		
		mav.setViewName("admin/itemList2");

		
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
	//===================찬호 끝===================
}
