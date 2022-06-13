package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;

@WebServlet("/MusicDelete")
public class MusicDelete extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MsgDeleteOneServiceCon");
		
		String keys = request.getParameter("keys");
		String pname = request.getParameter("pname");
		
		System.out.println("keys : " + pname);
		
		DAO dao = new DAO();
		int cnt = dao.MusicDelete(keys);
		
		if(cnt > 0) {
			System.out.println("음원 삭제 성공");
		}
		else {
			System.out.println("음원 삭제 실패");
		}
		
		response.sendRedirect("playList.jsp");
		
	}

}
