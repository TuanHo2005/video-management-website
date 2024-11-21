package com.asm.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asm.Dao.VideoDao;
import com.asm.Entity.Video;

import Daoimpl.VideoImpl;
@WebServlet({
	"/video/views"
	
})
public class VideoServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	VideoDao vdao = new VideoImpl();
	List<Video> list = vdao.finAll();
	req.setAttribute("videos", list);
	
	req.getRequestDispatcher("/views/User/index.jsp").forward(req, resp);
}
}
