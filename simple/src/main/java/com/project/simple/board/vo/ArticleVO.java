package com.project.simple.board.vo;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

import org.springframework.stereotype.Component;


@Component("articleVO")

public class ArticleVO {
	private int noticeNum;
	private Date noticeDate;
	private String noticeTitle;
	private String noticeWriter;
	private String noticeContent;
	private String noticeImg;

	
	public ArticleVO() {
		System.out.println("ArticleVO »ý¼ºÀÚ");
	}
	
	public int getNoticeNum() {
		return noticeNum;
	}
	
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
	
	public Date getNoticeDate() {
		return noticeDate;
	}
	
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	
	public String getNoticeTitle() {
		return noticeTitle;
	}
	
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle= noticeTitle;
	}
	
	public String getNoticeWriter() {
		return noticeWriter;
	}
	
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	
	public String getNoticeContent() {
		return noticeContent;
	}
	
	public void noticeContentt(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	
	public String getNoticeImg() {
		try {
			if(noticeImg != null & noticeImg.length() !=0) {
				noticeImg = URLDecoder.decode(noticeImg, "utf-8");
			}
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 
			return noticeImg;
		}
	
	public void setNoticeImg(String noticeImg) {
		try {
			if(noticeImg != null && noticeImg.length() !=0) {
				this.noticeImg = URLEncoder.encode(noticeImg, "utf-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	


}
