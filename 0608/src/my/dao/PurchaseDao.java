package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Purchase;

public class PurchaseDao {
	
	public int insert(Connection conn, Purchase purchase) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
					("insert into purchase (buyerId, movieTitle,totalPrice, purchaseDate) values (?,?,?,?)");
			pstmt.setString(1, purchase.getBuyerId());
			pstmt.setString(2, purchase.getMovieTitle());
			pstmt.setInt(3, purchase.getTotalPrice());
			pstmt.setTimestamp(4, new Timestamp(purchase.getPurchaseDate().getTime()));
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	
}









