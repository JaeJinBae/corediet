package com.webaid.domain;

public class NoticeVO {
	private int no;
	private String writer;
	private String regdate;
	private int cnt;
	private String title;
	private String content;
	private String upload_origin;
	private String upload_stored;

	public NoticeVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUpload_origin() {
		return upload_origin;
	}

	public void setUpload_origin(String upload_origin) {
		this.upload_origin = upload_origin;
	}

	public String getUpload_stored() {
		return upload_stored;
	}

	public void setUpload_stored(String upload_stored) {
		this.upload_stored = upload_stored;
	}

	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", writer=" + writer + ", regdate=" + regdate + ", cnt=" + cnt + ", title="
				+ title + ", content=" + content + ", upload_origin=" + upload_origin + ", upload_stored="
				+ upload_stored + "]";
	}

}
