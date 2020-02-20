package com.connectcloset.cc.blog.model.service;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogService {


	List<Blog> selectBlogList(int cPage, int numPerPage);

	int selectTotalContents();

	int insertBlog(Blog blog, List<Attachment> attachList);

	Blog selectOneBlog(int blogNo);

	List<Attachment> selectAttachmentList(int blogNo);
	
	BlogAttachVO selectOneBlogCollection(int blogNo);




}
