package membership;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{


	public MemberDAO(ServletContext application) {
		super(application);
	}
		
	//회원가입
	public int memberInsert(MemberDTO dto) {
		int result = 0;
		
		try {
			String sql ="insert into member values"
		+"(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
		psmt = con.prepareStatement(sql);
		psmt.setString(1, dto.getUserid());
		psmt.setString(2, dto.getPass());
		psmt.setString(3, dto.getName());
		psmt.setString(4, dto.getGender());
		psmt.setString(5, dto.getBirthday());
		psmt.setString(6, dto.getZipcode());
		psmt.setString(7, dto.getAddress1());
		psmt.setString(8, dto.getAddress2());
		psmt.setString(9, dto.getEmail());
		psmt.setString(10, dto.getMobile());
		//시간까지 나타내려고 Timestamp 사용
		psmt.setTimestamp(11, new Timestamp(System.currentTimeMillis()));

		result = psmt.executeUpdate();


		} catch (Exception e) {
			System.out.println("회원가입에러");
			e.printStackTrace();
		}
		return result;
	}
	
	//로그인
	public MemberDTO memberLogin(String u_id, String u_pass) {
		
		MemberDTO dto = new MemberDTO();
		
		String query = "select * from member where id = ? and password = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, u_id);
			psmt.setString(2, u_pass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setUserid(rs.getString(2));
				dto.setPass(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setGender(rs.getString(5));
				dto.setBirthday(rs.getString(6));
				dto.setZipcode(rs.getString(7));
				dto.setAddress1(rs.getString(8));
				dto.setAddress2(rs.getString(9));
				dto.setEmail(rs.getString(10));
				dto.setMobile(rs.getString(11));
				dto.setSigndate(rs.getTimestamp(12));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
}




