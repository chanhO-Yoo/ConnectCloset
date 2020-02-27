package com.connectcloset.cc.order.model.vo;

import java.io.Serializable;

public class Graph  implements Serializable{

	private static final long serialVersionUID = 1L;

	private String monthlySales;
	private String monthlySalesVolume;
	private String month;
	
	public Graph() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Graph(String monthlySales, String monthlySalesVolume, String month) {
		super();
		this.monthlySales = monthlySales;
		this.monthlySalesVolume = monthlySalesVolume;
		this.month = month;
	}

	public String getMonthlySales() {
		return monthlySales;
	}

	public void setMonthlySales(String monthlySales) {
		this.monthlySales = monthlySales;
	}

	public String getMonthlySalesVolume() {
		return monthlySalesVolume;
	}

	public void setMonthlySalesVolume(String monthlySalesVolume) {
		this.monthlySalesVolume = monthlySalesVolume;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Graph [monthlySales=" + monthlySales + ", monthlySalesVolume=" + monthlySalesVolume + ", month=" + month
				+ "]";
	}
	
}
