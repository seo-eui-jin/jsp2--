package com.sej.app.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sej.app.action.Action;
import com.sej.app.action.ActionForward;

public class MemberCheckIdOk implements Action{

	@Override
	public ActionForward excute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String memberId = req.getParameter("memberId");
		
		return null;
		
	}
	

}
