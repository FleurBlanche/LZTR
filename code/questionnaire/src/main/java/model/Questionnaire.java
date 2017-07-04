package model;

import java.sql.Date;

public class Questionnaire{
	private int id;
	private int userid;
	private String title;
	private String status; 		/* unp(default), pub, end, or ban */
	private int isPublic;    	/* 1(default) or 0 */
	private Date releaseTime;
	private Date endTime;
	
	public Questionnaire(){
		
	}
	
	public Questionnaire(int id, int userid, String title, String status, int isPublic, Date releaseTime, Date endTime){
		this.id = id;
		this.userid = userid;
		this.title = title;
		this.status = status;
		this.isPublic = isPublic;
		this.releaseTime = releaseTime;
		this.endTime = endTime;
	}
	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	
	public int getUserid(){
		return userid;
	}
	public void setUserid(int userid){
		this.userid = userid;
	}
	
	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title = title;
	}
	
	public String getStatus(){
		return status;
	}
	public void setStatus(String status){
		this.status = status;
	}
	
	public int getIsPublic(){
		return isPublic;
	}
	public void setIsPublic(int isPublic){
		this.isPublic = isPublic;
	}
	
	public Date getReleaseTime(){
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime){
		this.releaseTime = releaseTime;
	}
	
	public Date getEndTime(){
		return endTime;
	}
	public void setEndTime(Date endTime){
		this.endTime = endTime;
	}
	
	
}