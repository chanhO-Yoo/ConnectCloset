package com.connectcloset.cc.blog.model.service;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogService {


	List<BlogAttachVO> selectBlogList(int cPage, int numPerPage);
	
	int selectTotalContents();

	int insertBlog(Blog blog, List<Attachment> attachList);

	List<BlogAttachVO> selectOneBlog(int blogNo);

	List<BlogAttachVO> selectAttachmentList(int blogNo);
	
	List<BlogAttachVO> selectOneBlogCollection(int blogNo);

	List<BlogAttachVO> selectimgList(int blogNo);




}
