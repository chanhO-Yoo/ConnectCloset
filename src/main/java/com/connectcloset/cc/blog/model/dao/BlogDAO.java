package com.connectcloset.cc.blog.model.dao;

import java.util.List;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogDAO {

	int insertBlog(Blog blog);

	List<Blog> selectBlogList(int cPage, int numPerPage);

	int selectTotalContents();


	Blog selectOneBlog(int blogNo);

	List<Attachment> selectAttachmentList(int blogNo);

	BlogAttachVO selectOneBlogCollection(int blogNo);

//	int insertAttachment(Attachment a);


}
