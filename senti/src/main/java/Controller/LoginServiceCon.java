package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DTO;
import Model.MemberDAO;

@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LoginServiceCon");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		
		DTO dto = new DTO(id, pw);
		
		MemberDAO dao = new MemberDAO();
		DTO info = dao.login(dto);
		
		if(info != null) {
			System.out.println("로그인 성공");
			
			//로그인 정보 유지하기 -> session 이용
			//1. session 객체 선언
			HttpSession session = request.getSession();
			
			//2. 로그인 정보를 담은 session만들기
			session.setAttribute("info", info);
			response.sendRedirect("playList.jsp");
		}
		else {
			System.out.println("로그인 실패");
			response.sendRedirect("joinFalse.jsp");
		}
		
	}

}
