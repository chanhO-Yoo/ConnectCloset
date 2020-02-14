package com.connectcloset.cc.blog.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.connectcloset.cc.blog.model.dao.BlogDAO;
import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;
import com.connectcloset.cc.blog.model.dao.BlogDAO;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	BlogDAO blogDAO;
	
	@Transactional(propagation=Propagation.REQUIRED,
			   isolation=Isolation.READ_COMMITTED,
			   rollbackFor=Exception.class)
	
	@Override
	public int insertBlog(Blog blog)  {
		int result = 0;
		
		//1.board 행추가
		result = blogDAO.insertBlog(blog);
		if(result == 0)
			try {
				throw new Exception("게시글 등록 오류");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
//		//2.attachment 행추가 : boardNo를 알아야한다.
//		if(attachList.size() > 0) {
//			for(Attachment a : attachList) {
//				a.setBlogNo(blog.getBlogNo());
//				result = blogDAO.insertAttachment(a);
//				
//				if(result == 0)
//					try {
//						throw new Exception("게시글 첨부파일 등록오류!");
//					} catch (Exception e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					}
//			}
//		}
//		
		return result;
	}

	@Override
	public List<Blog> selectBlogList(int cPage, int numPerPage) {
		return blogDAO.selectBlogList(cPage, numPerPage);
	}

	@Override
	public int selectTotalContents() {
		return blogDAO.selectTotalContents();
	}

	@Override
	public Blog selectOneBlog(int blogNo) {
		return blogDAO.selectOneBlog(blogNo);
	}

	@Override
	public List<Attachment> selectAttachmentList(int blogNo) {
		return blogDAO.selectAttachmentList(blogNo);
	}

	@Override
	public BlogAttachVO selectOneBlogCollection(int blogNo) {
		return blogDAO.selectOneBlogCollection(blogNo);
	}

} 
