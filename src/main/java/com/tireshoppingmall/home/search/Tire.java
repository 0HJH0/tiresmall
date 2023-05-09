package com.tireshoppingmall.home.search;

public class Tire {
	
	private String tg_img;
	private String tg_brand;
	private String tg_name;
	private int ti_pricefac;
	private int ti_width;
	private int ti_ratio;
	private int ti_inch;
	
	public Tire() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Tire(String tg_img, String tg_brand, String tg_name, int ti_pricefac, int ti_width, int ti_ratio,
			int ti_inch) {
		super();
		this.tg_img = tg_img;
		this.tg_brand = tg_brand;
		this.tg_name = tg_name;
		this.ti_pricefac = ti_pricefac;
		this.ti_width = ti_width;
		this.ti_ratio = ti_ratio;
		this.ti_inch = ti_inch;
	}
	
	public String getTg_img() {
		return tg_img;
	}
	public void setTg_img(String tg_img) {
		this.tg_img = tg_img;
	}
	public String getTg_brand() {
		return tg_brand;
	}
	public void setTg_brand(String tg_brand) {
		this.tg_brand = tg_brand;
	}
	public String getTg_name() {
		return tg_name;
	}
	public void setTg_name(String tg_name) {
		this.tg_name = tg_name;
	}
	public int getTi_pricefac() {
		return ti_pricefac;
	}
	public void setTi_pricefac(int ti_pricefac) {
		this.ti_pricefac = ti_pricefac;
	}
	public int getTi_width() {
		return ti_width;
	}
	public void setTi_width(int ti_width) {
		this.ti_width = ti_width;
	}
	public int getTi_ratio() {
		return ti_ratio;
	}
	public void setTi_ratio(int ti_ratio) {
		this.ti_ratio = ti_ratio;
	}
	public int getTi_inch() {
		return ti_inch;
	}
	public void setTi_inch(int ti_inch) {
		this.ti_inch = ti_inch;
	}
	
}
