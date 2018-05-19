package com.bean;

import java.sql.Date;

public class notes {
	private Date date=null;
	private String content=null;
	private int likes;
	private String username=null;
	private String likename=null;
	public notes ( String content,int likes, String username,String likename)
	{
		this.date=new Date(new java.util.Date().getTime());
		this.content=content;
		this.likes=0;
		this.username=username;
		this.likename=likename;
	}
	public Date getDate()
	{
		return this.date;
	}
	public String getContent()
	{
		return this.content;
	}
	public int getCount()
	{
		return this.likes;
	}
	public String getuserName()
	{
		return this.username;
	}
	public String getlikeName()
	{
		return this.likename;
	}

}
