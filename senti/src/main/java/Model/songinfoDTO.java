package Model;

public class songinfoDTO {

	private String keys;
	private String title;
	private String singer;
	private String genre;
	private String bpm;
	private String lyrics;
	private String path;
	private String mrpath;
	private String albumimg;
	private String release;

	public songinfoDTO(String keys, String title, String singer, String albumimg) {
		super();
		this.keys = keys;
		this.title = title;
		this.singer = singer;
		this.albumimg = albumimg;
	}

	public songinfoDTO(String title, String singer, String albumimg, String release, String genre, String lyrics) {
		super();
		this.title = title;
		this.singer = singer;
		this.genre = genre;
		this.albumimg = albumimg;
		this.release = release;
		this.lyrics = lyrics;
	}
	
	public songinfoDTO(String title, String singer, String albumimg, String release, String genre, String lyrics, 
			String keys) {
		super();
		this.keys = keys;
		this.title = title;
		this.singer = singer;
		this.genre = genre;
		this.lyrics = lyrics;
		this.albumimg = albumimg;
		this.release = release;
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

	public String getAlbumimg() {
		return albumimg;
	}

	public void setAlbumimg(String albumimg) {
		this.albumimg = albumimg;
	}

	public String getRelease() {
		return release;
	}

	public void setRelease(String release) {
		this.release = release;
	}

}