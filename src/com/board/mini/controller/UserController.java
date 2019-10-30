package com.board.mini.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.mini.service.UserService;
//C:\Program Files\Java\jdk1.8.0_221\jre\lib\ojdbc6 있어야함
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uiName = request.getParameter("uiName"); // request.getParameter("uiName")은 signup의 이름의 name을 바라봄(16
														// line)
		String uiId = request.getParameter("uiId");
		String uiPwd = request.getParameter("uiPwd");
		UserService us = new UserService();
		String uri= request.getRequestURI();
		System.out.println(uri.substring(6));
	}
}
