package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/playList")
public class playList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("playList controller");
		
		// 1. post방식 인코딩
		request.setCharacterEncoding("UTF-8");
	
		// 2. 값 받아오기
		String playListName = request.getParameter("playListName");
		System.out.println(playListName);
		
		response.sendRedirect("playList.jsp");
		
	
	}

}
