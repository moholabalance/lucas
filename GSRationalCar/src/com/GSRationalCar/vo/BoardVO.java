package com.GSRationalCar.vo;

import java.sql.Timestamp;
public class BoardVO {
	private int BoardId =1, BoardHit = 0;
	private String BoardTitle, BoardContent, id;
	private Timestamp BoardDate;
	public int getBoardId() {
		return BoardId;
	}
	public void setBoardId(int boardId) {
		BoardId = boardId;
	}
	public int getBoardHit() {
		return BoardHit;
	}
	public void setBoardHit(int boardHit) {
		BoardHit = boardHit;
	}
	public String getBoardTitle() {
		return BoardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		BoardTitle = boardTitle;
	}
	public String getBoardContent() {
		return BoardContent;
	}
	public void setBoardContent(String boardContent) {
		BoardContent = boardContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getBoardDate() {
		return BoardDate;
	}
	public void setBoardDate(Timestamp boardDate) {
		BoardDate = boardDate;
	}
	
	@Override
	public String toString() {
			StringBuilder builder = new StringBuilder();
			builder.append("BoardVO [BoardId=").append(BoardId).append(", BoardHit=").append(BoardHit).append(", BoardTitle=")
					.append(BoardTitle).append(", BoardContent=").append(BoardContent).append(", BoardDate=").append(BoardDate).append(", id=").append(id).append("]");
			return builder.toString();
		}
	}
