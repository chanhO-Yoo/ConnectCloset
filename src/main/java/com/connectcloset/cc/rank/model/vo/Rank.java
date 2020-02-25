package com.connectcloset.cc.rank.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Rank implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int rank;
	private String searchKeyword;
	private int count;
	
	public Rank() {
		super();
	}

	public Rank(int rank, String searchKeyword, int count) {
		super();
		this.rank = rank;
		this.searchKeyword = searchKeyword;
		this.count = count;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Rank [rank=" + rank + ", searchKeyword=" + searchKeyword + ", count=" + count + "]";
	}
	
	
	
	
	
}
