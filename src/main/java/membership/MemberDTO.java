package membership;
/*
DTO(Data Transfer Object) : JSP와 Java파일간에 데이터를 전달하기
	위한 객체로 자바빈 규약에 의해 제작한다.
	자바빈 규약은 115페이지를 참조. 
 */
import java.sql.Timestamp;

//DTO 클래스
public class MemberDTO {
	private String userid; //아이디
	private String pass;  //비번
	private String name; //이름
	private String gender; //성별
	private String birthday; //생년월일
	private String zipcode; //주소
	private String address1; //주소
    private String address2; //상세주소
    private String email; //이메일
    private String mobile; //폰번호
    private Timestamp signdate;
    
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String moblie) {
		this.mobile = moblie;
	}

	public Timestamp getSigndate() {
		return signdate;
	}

	public void setSigndate(Timestamp signdate) {
		this.signdate = signdate;
	}

	@Override
	public String toString() {
	// TODO Auto-generated method stub
	    return super.toString();
	}
}

    
  


