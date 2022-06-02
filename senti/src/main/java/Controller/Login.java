package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Login Controller");
		
		// post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 입력받은 값 가져오기
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		
		// login메소드 호출
		String nick = new DAO().login(id, pw);
		
		// 실행 결과 = nickname으로 판단
		if(nick != null){
			System.out.println("로그인 성공");
			
			// session사용해서 nickname전송하기
			// 1. servlet에서는 session객체 선언
			HttpSession session = request.getSession();
			
			// 2. session 생성 (session구분할 이름, 값)
			session.setAttribute("nick", nick);
			
			// 3. 페이지 응답
			//response.sendRedirect("./playList.jsp");
			response.sendRedirect("playList.jsp?nickname="+URLEncoder.encode(nick, "UTF-8"));
			System.out.println("닉네임 : "+nick);
			
			
		}else{
			System.out.println("로그인 실패");
			response.sendRedirect("LoginFalse.jsp");
		}
	}

}
