package com.connectcloset.cc.blog.controller;

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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.connectcloset.cc.blog.model.service.BlogService;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;
import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;



/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
@Controller
public class BlogController {
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;

	@Autowired
	BlogService blogService;
	
	
	//==================== 하라 시작 =========================
	
	@RequestMapping("/blog/blogList.do")
	public ModelAndView selectBlogList(ModelAndView mav,
				@RequestParam(defaultValue="1") int cPage) {
		
		final int numPerPage = 10;

		//1.업무로직
		List<Blog> list = blogService.selectBlogList(cPage, numPerPage);
		logger.debug("list={}", list);
		int totalContents = blogService.selectTotalContents();
		
		//2.view model처리
		mav.addObject("list", list);
		mav.addObject("numPerPage", numPerPage);
		mav.addObject("cPage", cPage);
		mav.addObject("totalContents", totalContents);
		
		mav.setViewName("blog/blogList");
		return mav;
		}
			
	@RequestMapping("/blog/blog-details.do")
	public void blogDetail() {
		
	}
	
	@RequestMapping("/blog/blogForm.do")
	public void blogForm() {
		logger.debug("게시글 등록 페이지 요청!");
	}
	
	@PostMapping("/blog/blogFormEnd.do")
	public ModelAndView blogFormEnd(ModelAndView mav,
									 Blog blog,
									 HttpServletRequest request) {
		 /*@RequestParam(value="upFile", required=false) MultipartFile[] upFile,*/
		logger.debug("게시물 등록 요청!");
		logger.debug("blog={}", blog);
//		logger.debug("사용자입력 name={}", upFile.getName());
//		logger.debug("fileName={}", upFile.getOriginalFilename());
//		logger.debug("size={}", upFile.getSize());
		
/*		try {
		
		String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/upload/blog");
		List<Attachment> attachList = new ArrayList<>();
		
		//동적으로 directory 생성하기
		File dir = new File(saveDirectory);
		if(dir.exists() == false)
			dir.mkdir();
		
		//MultipartFile객체 파일 업로드 처리 시작 /////////////////////////////
		for(MultipartFile f : upFile) {
			if(!f.isEmpty()) {
				//파일명 재생성
				String originalFileName = f.getOriginalFilename();
				String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rndNum = (int)(Math.random()*1000);
				String renamedFileName = sdf.format(new Date())+"_"+rndNum+ext;
				
				//서버 컴퓨터에 파일 저장
				try {
					f.transferTo(new File(saveDirectory+"/"+renamedFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				Attachment attach = new Attachment();
				attach.setOriginalFileName(originalFileName);
				attach.setRenamedFileName(renamedFileName);
				attachList.add(attach);
				
			}
		}
		
		logger.debug("attachList={}",attachList);
		//MultipartFile객체 파일 업로드 처리 끝 /////////////////////////////*/
		
		//2.업무로직
		int result = blogService.insertBlog(blog);
		
//		3.view단 처리
		
		mav.addObject("msg", result>0?"게시물등록 성공!":"게시물등록 실패!");
		mav.addObject("loc", "/blog/blogList.do");
		mav.setViewName("/common/msg");
	
//	} catch (Exception e) {
//		//void org.slf4j.Logger.error(String msg, Throwable t)
//		logger.error(e.getMessage(), e);
//		
//		//예외를 스프링컨테이너에게 다시 던져서 예외 페이지로 연결되도록 한다.
//		throw e;
//	}
		
		return mav;
	}
	
	@RequestMapping("/blog/blogView.do")
	public String blogView (Model model,
								  @RequestParam ("blogNo") int blogNo) {
		
		Blog blog = blogService.selectOneBlog(blogNo);
		List<Attachment> attachmentList = blogService.selectAttachmentList(blogNo);
		
		model.addAttribute("blog", blog);
		model.addAttribute("attachmentList", attachmentList);
		
		return "blog/blogView";
	}
	
	@RequestMapping("/blog/blogViewCollection.do")
	public void blogViewCollection(Model model,
									@RequestParam("blogNo")int blogNo) {
		
		BlogAttachVO blog = blogService.selectOneBlogCollection(blogNo);
		
		logger.debug("blog={}", blog);
		
		model.addAttribute("blog",blog);
	}
	
}


		//==================== 하라 끝 =========================