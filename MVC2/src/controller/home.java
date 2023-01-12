package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class home extends HttpServlet{

	private static final long serialVersionUID = -3363915618353293804L;
	@Override // doGet : get방식으로 요청이 들어오면 이 메서드가 실행이 된다.
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/ex01.jsp");
		// dispatcher 전달자
		rd.forward(req, resp);
	}
}
