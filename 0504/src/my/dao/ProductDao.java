package my.dao;

import java.sql.*;
import my.model.Product;

public class ProductDao {

	public int insert (Connection conn, Product product) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
			("insert into product (name, producer, price) values (?,?,?)");
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getProducer());
			pstmt.setInt(3, product.getPrice());
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	public int update (Connection conn, Product product) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
			("update product set name=?, producer=?, price=? where productId=?");
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getProducer());
			pstmt.setInt(3, product.getPrice());
			pstmt.setInt(4, product.getProductId());
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	
	public Product select (Connection conn, int productId)throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from product where productId = ?");
			pstmt.setInt(1, productId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				Product product = new Product();
				product.setProductId(rs.getInt("productId"));
				product.setName(rs.getString("name"));
				product.setProducer(rs.getString("producer"));
				product.setPrice(rs.getInt("price"));
				return product;
			} else {
				return null;
			}
		}finally {
			pstmt.close();
			rs.close();
		}
	}
	public int delete(Connection conn, int productId) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement("delete from product where productid = ?");
			pstmt.setInt(1, productId);
			return pstmt.executeUpdate();
		} finally{
			pstmt.close();
		}
	}
}
	
	
	
	
	

