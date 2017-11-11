package uk.co.ukstarjet.entity.custom;

import java.util.List;

import uk.co.ukstarjet.entity.Houseimg;
import uk.co.ukstarjet.entity.Propertyletting;

public class PropertyVo {
	
	
	private Propertyletting property;
	
	private List<Houseimg> imgs;
	private String priceRange;
	private Integer currentPage;
	private Integer pageSize;
	private boolean hasImg;
	public boolean getHasImg() {
		return hasImg;
	}
	public boolean isHasImg() {
		return hasImg;
	}
	public void setHasImg(boolean hasImg) {
		this.hasImg = hasImg;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public String getPriceRange() {
		return priceRange;
	}
	public void setPriceRange(String priceRange) {
		this.priceRange = priceRange;
	}
	public List<Houseimg> getImgs() {
		return imgs;
	}
	public void setImgs(List<Houseimg> imgs) {
		this.imgs = imgs;
	}
	public Propertyletting getProperty() {
		return property;
	}
	public void setProperty(Propertyletting property) {
		this.property = property;
	}
	public Integer getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(Integer maxPrice) {
		this.maxPrice = maxPrice;
	}
	public Integer getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(Integer minPrice) {
		this.minPrice = minPrice;
	}
	private Integer maxPrice;
	private Integer minPrice;


	
}
