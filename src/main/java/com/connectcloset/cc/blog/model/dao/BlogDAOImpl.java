package com.connectcloset.cc.blog.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.connectcloset.cc.blog.model.vo.Attachment;
import com.connectcloset.cc.blog.model.vo.Blog;
import com.connectcloset.cc.blog.model.vo.BlogAttachVO;


@Repository
public class BlogDAOImpl implements BlogDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	//==================== 하라 시작 =========================

	@Override
	public int insertBlog(Blog blog) {
		return sqlSession.insert("blog.insertBlog",blog);
	}

	@Override
	public List<Blog> selectBlogList(int cPage, int numPerPage) {
		RowBounds rowBounds = new RowBounds((cPage-1)*numPerPage, numPerPage);
//		select * from board order by boardno desc 
		return sqlSession.selectList("blog.selectBlogList", null, rowBounds);
	}

	@Override
	public int selectTotalContents() {
		return sqlSession.selectOne("blog.selectTotalContents");
	}


	@Override
	public Blog selectOneBlog(int blogNo) {
		return sqlSession.selectOne("blog.selectOneBlog",blogNo);
	}

	@Override
	public List<Attachment> selectAttachmentList(int blogNo) {
		return sqlSession.selectList("blog.selectAttachmentList",blogNo);
	}

	@Override
	public BlogAttachVO selectOneBlogCollection(int blogNo) {
		return sqlSession.selectOne("blog.selectOneBlogCollection",blogNo);
	}

	@Override
	public int insertAttachment(Attachment a) {
		return sqlSession.insert("blog.insertAttachment",a);
	}
	
	
	//==================== 하라 끝 =========================
}
