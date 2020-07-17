package my.model;

import java.util.Date;

public class Purchase {
	private int purchseId;
	private String buyerId;
	private String movieTitle;
	private int totalPrice;
	private Date purchaseDate;
	
	
	public Purchase(int purchseId, String buyerId, String movieTitle, int totalPrice, Date purchaseDate) {
		super();
		this.purchseId = purchseId;
		this.buyerId = buyerId;
		this.movieTitle = movieTitle;
		this.totalPrice = totalPrice;
		this.purchaseDate = purchaseDate;
	}
	public int getPurchseId() {
		return purchseId;
	}
	public void setPurchseId(int purchseId) {
		this.purchseId = purchseId;
	}
	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	
	
}
