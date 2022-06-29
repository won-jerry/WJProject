package membership;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{


	
	
	public MemberDAO() {
		super();
	}

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
		
		String query = "select * from member where userid = ? and pass = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, u_id);
			psmt.setString(2, u_pass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setUserid(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setGender(rs.getString(4));
				dto.setBirthday(rs.getString(5));
				dto.setZipcode(rs.getString(6));
				dto.setAddress1(rs.getString(7));
				dto.setAddress2(rs.getString(8));
				dto.setEmail(rs.getString(9));
				dto.setMobile(rs.getString(10));
				dto.setSigndate(rs.getTimestamp(11));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public MemberDTO memberSelect(String id, String pw) {
		MemberDTO dto = new MemberDTO(); // 객체생성
		try {
			System.out.println("id:" + id);
			System.out.println("pw:" + pw);

			if (pw.equals("")) {
				// 아이디가 맞는지 확인용
				String sql = "select * from member where userid = ?";

				// Statement 객체 생성
				psmt = con.prepareStatement(sql);
				psmt.setString(1, id);

				// SQL문(SELECT)을 전달해서 실행 후 결과 받기
        /* SELECT문의 경우, executeQuery 메소드를 사용 */
				rs = psmt.executeQuery();

				// 조회결과의 ResultSet을 VO객체로 초기화
		    /* 조회결과가 한개인 경우 => Member객체를 이용 */
				if (rs.next()) {

					dto.setUserid(rs.getString(1));
					dto.setPass(rs.getString(2));
					dto.setName(rs.getString(3));
					dto.setGender(rs.getString(4));
					dto.setBirthday(rs.getString(5));
					dto.setZipcode(rs.getString(6));
					dto.setAddress1(rs.getString(7));
					dto.setAddress2(rs.getString(8));
					dto.setEmail(rs.getString(9));
					dto.setMobile(rs.getString(10));
					dto.setSigndate(rs.getTimestamp(11));

				}

			} else {
				// 아이디와 비번이 맞는지 확인용
				String sql = "select * from member where userid = ? and pass = ?";

				psmt = con.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.setString(2, pw);
				rs = psmt.executeQuery();

				// rs.next(); // 해당결과는 한행뿐이기 때문에 if문을 쓰지않음
				if (rs.next()) {

					dto.setUserid(rs.getString(1));
					dto.setPass(rs.getString(2));
					dto.setName(rs.getString(3));
					dto.setGender(rs.getString(4));
					dto.setBirthday(rs.getString(5));
					dto.setZipcode(rs.getString(6));
					dto.setAddress1(rs.getString(7));
					dto.setAddress2(rs.getString(8));
					dto.setEmail(rs.getString(9));
					dto.setMobile(rs.getString(10));
					dto.setSigndate(rs.getTimestamp(11));

				}
			}
			

		} catch (Exception e) {
			System.out.println("로그인에러"+e.getMessage());
			e.getStackTrace();
			
		}

		return dto;
	}

}
	
