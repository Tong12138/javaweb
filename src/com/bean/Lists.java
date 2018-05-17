package com.bean;

import java.sql.Date;


public class Lists {
	private Date date=null;
	private boolean com=false;
	private String content=null;
	private String username=null;
	public Lists(boolean com, String content,String username)
	{
		this.date=new Date(new java.util.Date().getTime());
		this.com=com;
		this.content=content;
		this.username=username;
	}
	public Date getDate()
	{
		return this.date;
	}
	public boolean getCom()
	{
		return this.com;
	}
	public String getContent()
	{
		return this.content;
	}
	public String getuserName()
	{
		return this.username;
	}
}
