package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.UserInfo;

public class UserInfoDao {
	
	public int insert(Connection conn, UserInfo userInfo) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
					("insert into userInfo (userId, "
							+ "password,name, loginTime) values (?,?,?,?)");
			pstmt.setString(1, userInfo.getUserId());
			pstmt.setString(2, userInfo.getPassword());
			pstmt.setString(3, userInfo.getName());
			pstmt.setTimestamp(4, new Timestamp(userInfo.getLoginTime().getTime()));
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	public int update(Connection conn, UserInfo userInfo) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
			("update userInfo set userId=?, password=?, "
					+ "name=?, loginTime=? where id =?");
			pstmt.setString(1, userInfo.getUserId());
			pstmt.setString(2, userInfo.getPassword());
			pstmt.setString(3, userInfo.getName());
			pstmt.setTimestamp(4, new Timestamp(userInfo.getLoginTime().getTime()));
			pstmt.setInt(5, userInfo.getId());
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	public UserInfo select(Connection conn, String userId) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;  //db에서 읽어온 레코드를 저장하는 객체
		try {
			pstmt = conn.prepareStatement
					("select * from userInfo where userId = ?");
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				return makeUserInfoFromRS(rs);
			} else {
				return null;
			}
		} finally {
			pstmt.close(); rs.close();
		}
	}
	public UserInfo makeUserInfoFromRS(ResultSet rs) throws SQLException{
		UserInfo userInfo = new UserInfo();
		userInfo.setId(rs.getInt("id"));
		userInfo.setUserId(rs.getString("userId"));
		userInfo.setPassword(rs.getString("password"));
		userInfo.setName(rs.getString("name"));
		userInfo.setLoginTime(rs.getTimestamp("loginTime"));
		return userInfo;
	}

	public int delete(Connection conn, int id) throws SQLException {
		PreparedStatement pstmt = null; 
		try {
			pstmt = conn.prepareStatement("delete from userInfo whereid=?");
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	public List<UserInfo> selectList(Connection conn) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from userInfo");
			rs = pstmt.executeQuery();
			if (rs.next()){
				List<UserInfo> userInfoList = new ArrayList<UserInfo>();
				do {
					UserInfo userInfo = new UserInfo();
					userInfo.setId(rs.getInt("id"));
					userInfo.setUserId(rs.getString("userId"));
					userInfo.setPassword(rs.getString("password"));
					userInfo.setName(rs.getString("name"));
					userInfo.setLoginTime(rs.getTimestamp("loginTime"));
					userInfoList.add(userInfo);
				} while (rs.next());
				return userInfoList;
			} else {
				return null;
			}
		} finally {
			rs.close();
			pstmt.close();
		}
	}
}









