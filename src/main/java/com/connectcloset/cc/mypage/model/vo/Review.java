package com.connectcloset.cc.mypage.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.connectcloset.cc.member.model.vo.Member;

public class Review implements Serializable {

	private static final long serialVersionUID = 1L;

	
	

	private int reviewNo;
	private String reviewTitle;
	private String reviewWriter;
	private String reviewItemNo;
	private String reviewItemSize;
	private int reviewWriterHeight;
	private int reviewWriterWeight;
	private String reviewImage;
	private String orderNo;
	private String reviewContent;
	
	

	
	/**
	 * @param reviewNo
	 * @param reviewTitle
	 * @param reviewWriter
	 * @param reviewItemNo
	 * @param reviewItemSize
	 * @param reviewWriterHeight
	 * @param reviewWriterWeight
	 * @param reviewImage
	 * @param orderNo
	 * @param reviewContent
	 */
	public Review(int reviewNo, String reviewTitle, String reviewWriter, String reviewItemNo, String reviewItemSize,
			int reviewWriterHeight, int reviewWriterWeight, String reviewImage, String orderNo, String reviewContent) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewWriter = reviewWriter;
		this.reviewItemNo = reviewItemNo;
		this.reviewItemSize = reviewItemSize;
		this.reviewWriterHeight = reviewWriterHeight;
		this.reviewWriterWeight = reviewWriterWeight;
		this.reviewImage = reviewImage;
		this.orderNo = orderNo;
		this.reviewContent = reviewContent;
	}

	
	public Review() {}

	
	
	public String getReviewContent() {
		return reviewContent;
	}
	
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewWriter() {
		return reviewWriter;
	}

	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}

	public String getReviewItemNo() {
		return reviewItemNo;
	}

	public void setReviewItemNo(String reviewItemNo) {
		this.reviewItemNo = reviewItemNo;
	}

	public String getReviewItemSize() {
		return reviewItemSize;
	}

	public void setReviewItemSize(String reviewItemSize) {
		this.reviewItemSize = reviewItemSize;
	}

	public int getReviewWriterHeight() {
		return reviewWriterHeight;
	}

	public void setReviewWriterHeight(int reviewWriterHeight) {
		this.reviewWriterHeight = reviewWriterHeight;
	}

	public int getReviewWriterWeight() {
		return reviewWriterWeight;
	}

	public void setReviewWriterWeight(int reviewWriterWeight) {
		this.reviewWriterWeight = reviewWriterWeight;
	}

	public String getReviewImage() {
		return reviewImage;
	}

	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewWriter=" + reviewWriter
				+ ", reviewItemNo=" + reviewItemNo + ", reviewItemSize=" + reviewItemSize + ", reviewWriterHeight="
				+ reviewWriterHeight + ", reviewWriterWeight=" + reviewWriterWeight + ", reviewImage=" + reviewImage
				+ ", orderNo=" + orderNo + ", reviewContent=" + reviewContent + "]";
	}

	
	
	
}

	
	