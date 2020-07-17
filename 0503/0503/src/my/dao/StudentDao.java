package my.dao;

import java.sql.*;
import my.model.Student;

public class StudentDao {

	public int insert (Connection conn, Student student) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
			("insert into student (name, depart, age) values (?,?,?)");
			pstmt.setString(1, student.getName());
			pstmt.setString(2, student.getDepart());
			pstmt.setInt(3, student.getAge());
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
	
	public int update (Connection conn, Student student) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement
			("update student set name=?, depart=?, age=? where studentId=?");
			pstmt.setString(1, student.getName());
			pstmt.setString(2, student.getDepart());
			pstmt.setInt(3, student.getAge());
			pstmt.setInt(4, student.getStudentId());
			return pstmt.executeUpdate();
		} finally {
			pstmt.close();
		}
	}
}
