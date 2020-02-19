package com.connectcloset.cc.blog.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
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

import com.connectcloset.cc.blog.model.exception.BlogException;
import com.connectcloset.cc.blog.model.service.BlogService;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.member.controller.MemberController;
import com.connectcloset.cc.member.model.service.MemberService;




/*value로 지정한 이름의 변수들은 session에 담아둔다.*/
@SessionAttributes(value= {"memberLoggedIn"})
@Controller
public class BlogController {
	
	private final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	BlogService blogService;
	
	
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
	
	@RequestMapping("/blog/blogForm.do")
		public void blogForm() {
			logger.debug("게시물등록 페이지 요청");
	}
	
	
	@RequestMapping("/blog/blogFormEnd.do")
		public ModelAndView blogFormEnd(ModelAndView mav, Blog blog,@RequestParam(value="upFile", required=false) MultipartFile[] upFile,
			HttpServletRequest request) {
		
		try {
			logger.debug("게시물등록요청");
			
			String saveDirectory = request.getSession().getServletContext().getRealPath("/resources/upload/blog");
			List<Attachment> attachList = new ArrayList<>();
			
			File dir = new File(saveDirectory);
			if(dir.exists()==false) {
				dir.mkdir();
				logger.debug("66666666666");
				
			}
			
			for(MultipartFile f : upFile) {
				if(!f.isEmpty()) {
					
					String originalFileName = f.getOriginalFilename();
					String ext = originalFileName.substring(originalFileName.lastIndexOf("."));
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHssSSS");
					int rndNum = (int)(Math.random()*1000);
					String renamedFileName = sdf.format(new Date())+"_"+rndNum+ext;
					logger.debug("77777777777");
					
					try {
						logger.debug("888888888");
						f.transferTo(new File(saveDirectory+"/"+renamedFileName));
						logger.debug("@@@@@@@saveDirectory={}",saveDirectory);
						logger.debug("@@@@@@@@f={}",f);
					}catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						
					}
					logger.debug("99999999999999");
					Attachment attach = new Attachment();
					attach.setOriginalFileName(originalFileName);
					attach.setRenamedFileName(renamedFileName);
					attachList.add(attach);
				}
	}
			logger.debug("attachList={}" ,attachList);
			
			int result = blogService.insertBlog(blog,attachList);
			
			mav.addObject("msg", result>0? "게시물등록성공" : "실패!!");
			mav.addObject("loc", "/blog/blogList.do");
			mav.setViewName("common/msg");
			
		}catch (Exception e) {
			logger.error(e.getMessage(), e);
			
			
			//예외를 스프링컨테이너에게 다시 던져서 예외페이지로 연결되도록 한다.
			/*throw e;*/
			throw new BlogException("게시물 등록 오류!",e);
		}
		return mav;
	}			
	@RequestMapping("/blog/blogView.do")
	public String blogView(Model model, @RequestParam("blogNo") int blogNo) {
		
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+blogNo);
		Blog blog = blogService.selectOneBlog(blogNo);
		
		List<Attachment> attachmentList = blogService.selectAttachmentList(blogNo);
		
		model.addAttribute("blog", blog);
		model.addAttribute("attachmentList",attachmentList);
		
		return "blog/blogView";
	}
	
	@RequestMapping("/blog/blogViewCollection.do")
	public void blogViewCollection(Model model, @RequestParam("blogNo") int blogNo) {
		
		BlogAttachVO blog = blogService.selectOneBlogCollection(blogNo);
		
		model.addAttribute("blog",blog);
	}
}