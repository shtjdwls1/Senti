package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.DTO;
import Model.MemberDAO;
import Model.songinfoDTO;

@WebServlet("/Testing")
public class Testing extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("Testing controller");
   
      // 1. post방식 인코딩
      request.setCharacterEncoding("UTF-8");
   
      // 2. 값 받아오기
      String high = request.getParameter("highSelect");   
      String low = request.getParameter("lowSelect");   
      String genres = request.getParameter("nick");
      
      System.out.println(high);
      System.out.println(low);
      System.out.println(genres);
      
      // 받아온 값을 DTO로 묶기
      DTO dto = new DTO(high, low);
      
      // join메소드 호출 -> 실행결과(int)
      MemberDAO dao = new MemberDAO();
      int cnt = dao.join(dto);
      
      // SQL문 실행결과에 따라 회원가입 성공실패 여부 확인
      if(cnt>0){
         System.out.println("회원가입 성공");
         response.sendRedirect("joinSuccess.jsp?nick="+URLEncoder.encode(genres, "utf-8"));
      }else {
         System.out.println("회원가입 실패");
         response.sendRedirect("joinFalse.jsp");
      }
   
   }

}