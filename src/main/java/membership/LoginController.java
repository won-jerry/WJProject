package membership;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import membership.MemberDAO;
import membership.MemberDTO;

import common.JDBConnect;
import utils.JSFunction;

public class LoginController extends HttpServlet {
	
	//여기서  doGet, doPost를 만들겁니다
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/member/login.jsp").forward(req, resp);
	}
	
	//데이터를 넘겨받을 거기때문에 여기선 doPost()메서드만 사용됩니다.
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//아이디와 비번을 가져옵니다.
		String userid = req.getParameter("userid");
		String pass = req.getParameter("pass");
		
		//DAO객체를 생성 및 초기화
		MemberDAO dao = new MemberDAO();
		
		//DAO의 memberSelect()의 결과값을 DTO에 저장합니다
		
		MemberDTO dto = dao.memberSelect(userid, pass);
		//System.out.println(dto.getUser_name());
		
		dao.close(); //반납
		
		//회원정보를 찾으면...
		if(dto.getUserid() != null) {
			//세션생셩
			HttpSession session = req.getSession();
			//값지정
			session.setAttribute("USERID", userid);
		  session.setAttribute("USER_NAME", dto.getName());
		    
		    JSFunction.alertLocation(resp, "환영합니다!", "../index.jsp");
		}else {
			JSFunction.alertBack(resp, "맞는 회원정보가 없습니다");
		}
	}
}