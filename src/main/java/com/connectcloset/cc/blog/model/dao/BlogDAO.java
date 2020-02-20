package com.connectcloset.cc.blog.model.dao;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogDAO {


//게시물보기
	List<Blog> selectBlogList(int cPage, int numPerPage);

	int selectTotalContents();
	
	//
// 게시물등록
	int insertBlog(Blog blog);

	int insertAttahment(Attachment a);

	Blog selectOneBlog(int blogNo);

	List<Attachment> selectAttachmentList(int blogNo);

	BlogAttachVO selectOneBlogCollection(int blogNo);

}
