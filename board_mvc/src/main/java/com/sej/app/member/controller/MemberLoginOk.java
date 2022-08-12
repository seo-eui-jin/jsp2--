package com.sej.app.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sej.app.action.Action;
import com.sej.app.action.ActionForward;
import com.sej.app.member.dao.MemberDAO;

public class MemberLoginOk implements Action {

	@Override
	public ActionForward excute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		MemberDAO dao = new MemberDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		String memberId = req.getParameter("memberId");
		String memberPw = req.getParameter("memberPw");
		
		forward.setRedirect(true);
		
		if(dao.login(memberId, memberPw)) {
			session.setAttribute("sessionId", memberId);
			forward.setPath(req.getContextPath() + "/board/BoardList.bo");
		}else {
			forward.setPath(req.getContextPath() + "/member/MemberLogin.me?code=false");
		}
		
		return forward;
	}

}
