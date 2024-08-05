package com.KoreaIT.java.jsp_AM;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/printDan")
public class PrintDanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		
		// 주소 뒤에 printDan?dan=8 일때, 8이 인자
		// printDan?dan=9&limit=4 <= dan에 9를 주고 limit에 4를 줌, 파라미터끼리는 &로 연결
		String inputedDan = request.getParameter("dan");
		String inputedLimit = request.getParameter("limit");
		String inputedColor = request.getParameter("color");

		// 아무값을 주지 않았을때 기본으로 1이 주어짐
		if (inputedDan == null) {
			inputedDan = "1";
		}

		if (inputedLimit == null) {
			inputedLimit = "1";
		}

		int dan = Integer.parseInt(inputedDan);
		int limit = Integer.parseInt(inputedLimit);

		response.getWriter().append(String.format("<div style='color:%s;'>==%d단 출력 * %d까지 글자 색상은 %s==</div>", inputedColor, dan, limit, inputedColor));

		
		for (int i = 1; i <= limit; i++) {
			
			response.getWriter().append(String.format("<div style=\"color:%s;\">%d * %d = %d</div>", inputedColor, dan, i, dan * i));
		}

	}

}
