package com.connectcloset.cc.rank.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Rank implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int rank;
	private String searchKeyword;
	private int count;
	private int memberNo;
	
	public Rank() {
		super();
	}

	public Rank(int rank, String searchKeyword, int count, int memberNo) {
		super();
		this.rank = rank;
		this.searchKeyword = searchKeyword;
		this.count = count;
		this.memberNo = memberNo;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Rank [rank=" + rank + ", searchKeyword=" + searchKeyword + ", count=" + count + ", memberNo=" + memberNo
				+ "]";
	}
	
	
	
	
	
	
}
