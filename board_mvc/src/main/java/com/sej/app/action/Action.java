package com.sej.app.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	
	public ActionForward excute(HttpServletRequest req, HttpServletResponse resp) throws Exception;

}
