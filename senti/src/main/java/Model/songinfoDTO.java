package Model;

public class songinfoDTO {

	// DTO : Data Transfer Object 데이터 전송 객체
	// DB의 테이블 형태와 같음
	
	// 필드 선언(컬럼 값들을 저장)
	private String keys;
	private String title;
	private String times;
	private String singer;
	private String genre;
	private String bpm;
	private String lyrics;
	private String path;
	private String mrpath;
	private String cover;
	
	public songinfoDTO(String title, String times, String singer, String cover) {
		super();
		this.title = title;
		this.times = times;
		this.singer = singer;
		this.cover = cover;
	}

	public String getKeys() {
		return keys;
	}

	public void setKeys(String keys) {
		this.keys = keys;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getBpm() {
		return bpm;
	}

	public void setBpm(String bpm) {
		this.bpm = bpm;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getMrpath() {
		return mrpath;
	}

	public void setMrpath(String mrpath) {
		this.mrpath = mrpath;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}
}