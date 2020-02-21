package com.connectcloset.cc.blog.model.dao;

import java.util.List;
import java.util.Map;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;

public interface BlogDAO {


//게시물보기
	List<BlogAttachVO> selectBlogList(int cPage, int numPerPage);

	int selectTotalContents();
	
	//
// 게시물등록
	int insertBlog(Blog blog);

	int insertAttahment(Attachment a);

	List<BlogAttachVO> selectOneBlog(int blogNo);

	List<BlogAttachVO> selectAttachmentList(int blogNo);

	List<BlogAttachVO> selectOneBlogCollection(int blogNo);

	List<BlogAttachVO> selectimgList(int blogNo);

	//====================하은 시작 ====================
	//인덱스블로그
	List<BlogAttachVO> blogShow(Blog blog);
	//====================하은 끝 ====================

}
