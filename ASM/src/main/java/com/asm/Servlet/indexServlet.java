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
        "/indexvid",
})
public class indexServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
req.setCharacterEncoding("utf-8");
resp.setCharacterEncoding("utf-8");
VideoDao vidDao = new VideoImpl();
List<Video> list = vidDao.finAll();
req.setAttribute("vidlist", list);
String path = req.getServletPath();
if(path.contains("indexvid")) {
	req.setAttribute("view", "/views/User/index.jsp");
}
req.getRequestDispatcher("/views/site/layout.jsp").include(req, resp);
}
}
