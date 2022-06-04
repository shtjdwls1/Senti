package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {

	// DAO = Data Access Object = DB에 접근하는 객체

	// 전역변수 선언
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	String nickname = null;

	
	// DB연결 메소드
	public void db_conn() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String db_id = "senti";
		String db_pw = "senti";

		conn = DriverManager.getConnection(db_url, db_id, db_pw);

		if (conn != null) {
			System.out.println("DB연결 성공");
		} else {
			System.out.println("DB연결 실패");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB닫기 메소드
	public void db_close() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원가입 메소드
	public int join(DTO dto) {
		try {
			// db연결 메소드 호출
			db_conn();
			System.out.println("db연결");
			// ------------------ DB연결 완료 -----------------------

			// DB에서 어떤 행위를 할지 결정 -> sql문
			// ? = 바인드변수
			// 들어갈 자리가 정해져있으면 userinfo(id, pw, nickname) 뒤에 들어갈 자리 지정
			String sql = "insert into userinfo values(?, ?, ?, ?, ?, ?, ?)";

			// DB에 sql문 전달 -> 전달 성공 시 PreparedStatement(psmt)객체로 반환
			psmt = conn.prepareStatement(sql);

			// ? 바인드 변수에 값채우기
			// psmt.setString(?의 번호, ?에 넣을 값);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getNick());
			psmt.setString(4, dto.getGender());
			psmt.setString(5, "");
			psmt.setString(6, "");
			psmt.setString(7, "");

			// SQL문 실행
			// executeUpdate(); : 데이터베이스에 변화가 생겼을 때 사용
			// : 실행 결과가 int형태로 반환
			// : int의 의미 = 몇개의 행이 변화가 생겼는지
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // finally는 무조건 실행해야 함 (DB문 닫기)
			db_close();
		}
		return cnt;
	}

	// 로그인 메소드
	public String login(String id, String pw) {
		String nick = null;
		// DB연결해서 있는지 없는지 확인하기
		// DB연결을 위한 통로 만들기 -> Class(OracleDriver)
		try {
			// db연결 메소드 호출
			db_conn();
			
			// --------------------------DB연결 끝---------------------------
			// 내가 입력한 id, pw가 userinfo테이블에 있는지 없는지 확인
			String sql = "select nick from userinfo where id=? and pw=?";

			// sql문장을 DB에 전달 -> 전달 성공 시 PreparedStatement객체로 반환
			psmt = conn.prepareStatement(sql);

			// ? 바인드변수에 값 채우기
			psmt.setString(1, id);
			psmt.setString(2, pw);

			// sql문장 실행
			// Query : 질의하다.
			// executeQuery : select문에서만 사용, DB에 값이 있는지 없는지 조회
			rs = psmt.executeQuery();

			// 성공을 했을 때만 if문 실행
			if (rs.next()) {
				nick = rs.getString("nick");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		} return nick;
	}
	
	// 검색기능
	public ArrayList<songinfoDTO> SearchSong(String search) {
		// 검색받은 데이터 검색
		String sql = "select keys, title, singer, albumimg from songinfo where title like '%"+search+"%' or singer like '%"+search+"%'";
		// 데이터를 담을 ArrayList
		ArrayList<songinfoDTO> playList = new ArrayList<songinfoDTO>();
		db_conn();
		try {
			psmt = conn.prepareStatement(sql);
			
			//실행
			rs = psmt.executeQuery();
			//결과 꺼내서 ArrayList에 담기
			while(rs.next()) {
				String keys = rs.getString(1);
				String title = rs.getString(2);
				String singer = rs.getString(3);
				String albumimg = rs.getString(4);
				
				songinfoDTO dto = new songinfoDTO(keys, title, singer, albumimg);
				
				playList.add(dto);
			}
							
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		}
		
	return playList;
	
	}
	
	// 음악 상세
	
	public ArrayList<songinfoDTO> detail(String key) {
		// 검색받은 데이터 검색
		String sql = "select title, singer, albumimg, release, genre, lyrics from songinfo where keys like '%" + key + "%'";
		// 데이터를 담을 ArrayList
		ArrayList<songinfoDTO> musicSearchDetail = new ArrayList<songinfoDTO>();
		db_conn();
		System.out.println("DETAIL");
		try {
			psmt = conn.prepareStatement(sql);
			
			// 실행
			rs = psmt.executeQuery();
			// 결과 꺼내서 ArrayList에 담기
			rs.next();
			

			String title = rs.getString(1);
			String singer = rs.getString(2);
			String albumimg = rs.getString(3);
			String release = rs.getString(4);
			String genre = rs.getString(5);
			String lyrics = rs.getString(6);
			
			songinfoDTO dto = new songinfoDTO(title, singer, albumimg, release, genre, lyrics);

			musicSearchDetail.add(dto);
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db_close();
		}

		return musicSearchDetail;

	}
	
	public int playList(playListDTO dto) {
		try {
			// db연결 메소드 호출
			db_conn();
			System.out.println("db연결");
			// ------------------ DB연결 완료 -----------------------

			// DB에서 어떤 행위를 할지 결정 -> sql문
			// ? = 바인드변수
			// 들어갈 자리가 정해져있으면 userinfo(id, pw, nickname) 뒤에 들어갈 자리 지정
			String sql = "insert into userinfo values(?, ?, ?)";

			// DB에 sql문 전달 -> 전달 성공 시 PreparedStatement(psmt)객체로 반환
			psmt = conn.prepareStatement(sql);

			// ? 바인드 변수에 값채우기
			// psmt.setString(?의 번호, ?에 넣을 값);
			psmt.setString(1, dto.getKeys());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getPname());

			// SQL문 실행
			// executeUpdate(); : 데이터베이스에 변화가 생겼을 때 사용
			// : 실행 결과가 int형태로 반환
			// : int의 의미 = 몇개의 행이 변화가 생겼는지
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // finally는 무조건 실행해야 함 (DB문 닫기)
			db_close();
		}
		return cnt;
	}
}
