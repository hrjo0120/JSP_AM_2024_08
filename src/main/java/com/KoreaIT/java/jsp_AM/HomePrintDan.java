package com.KoreaIT.java.jsp_AM;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home/printDan")
public class HomePrintDan extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.getWriter().append("Hi").append(request.getContextPath());
		// 응답을 바로 하지 않고 또 request를 한다.
		//forward(request, response)를 붙이면 jsp 파일을 활용할 수 있다. 
		request.getRequestDispatcher("/jsp/home/printDan.jsp").forward(request, response);
	}


}
