package com.connectcloset.cc.blog.model.service;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.AttachmentIndex;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogService {


	List<BlogAttachVO> selectBlogList(int cPage, int numPerPage);
	
	int selectTotalContents();

	int insertBlog(Blog blog, List<Attachment> attachList);

	Blog selectOneBlog(int blogNo);

	List<BlogAttachVO> selectAttachmentList(int blogNo);
	
	/*List<BlogAttachVO> selectOneBlogCollection(int blogNo);

	List<BlogAttachVO> selectimgList(int blogNo);*/
	
	BlogAttachVO blogView(int blogNo);

	
	//====================하은 시작 ====================
	//인덱스 블로그
	List<AttachmentIndex> blogShow(AttachmentIndex attachmentIndex);
	//====================하은 끝 ====================

	



}
