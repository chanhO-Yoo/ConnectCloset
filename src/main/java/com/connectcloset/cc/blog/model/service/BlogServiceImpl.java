package com.connectcloset.cc.blog.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.connectcloset.cc.blog.model.dao.BlogDAO;
import com.connectcloset.cc.blog.model.exception.BlogException;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;
import com.connectcloset.cc.blog.model.dao.BlogDAO;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	BlogDAO blogDAO;
	
	@Override
	public List<BlogAttachVO> selectBlogList(int cPage, int numPerPage) {
		return blogDAO.selectBlogList(cPage, numPerPage);
	}

	@Override
	public int selectTotalContents() {
		return blogDAO.selectTotalContents();
	}
	
	@Transactional(propagation=Propagation.REQUIRED, isolation=Isolation.READ_COMMITTED,rollbackFor=Exception.class)
	@Override
	public int insertBlog(Blog blog, List<Attachment> attachList) {
		int result = 0 ;
		System.out.println("1111111111111111111"+attachList);
	result = blogDAO.insertBlog(blog);
	if(result == 0) 
		throw new BlogException("게시물 등록 오류!!");
	
	if(attachList.size() > 0) {
		for(Attachment a : attachList) {
			a.setBlogNo(blog.getBlogNo());
			result = blogDAO.insertAttahment(a);
			
			System.out.println("aaaaaaaaaaa"+a);
			if(result == 0)
				throw new BlogException("게시물 첨부파일 등록 오류!");
		}
	
	}
	return result;
	}

	@Override
	public List<BlogAttachVO> selectOneBlog(int blogNo) {
		return blogDAO.selectOneBlog(blogNo);
	}

	@Override
	public List<BlogAttachVO> selectAttachmentList(int blogNo) {
		return blogDAO.selectAttachmentList(blogNo);
	}

	@Override
	public List<BlogAttachVO> selectOneBlogCollection(int blogNo) {
		return blogDAO.selectOneBlogCollection(blogNo);
	}

	@Override
	public List<BlogAttachVO> selectimgList(int blogNo) {
		return blogDAO.selectimgList(blogNo);
	}

} 
