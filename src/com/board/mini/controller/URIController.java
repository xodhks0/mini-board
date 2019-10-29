package com.board.mini.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class URIController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.println("나는 get방식일때 호출되는 method");
		String uri = "/WEB-INF" + request.getRequestURI() + ".jsp";
		out.println("너가 나한테 요청한 페이지 : "+ uri);
		out.println("니가 보낸 a값 : " + request.getParameter("a"));
		request.setAttribute("test", "나나나");
		RequestDispatcher rd = request.getRequestDispatcher(uri);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		out.println("나는 post방식일때 호출되는 method");
	}

}
