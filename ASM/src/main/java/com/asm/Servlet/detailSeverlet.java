package com.asm.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asm.Dao.VideoDao;
import com.asm.Entity.Video;

import Daoimpl.VideoImpl;

@WebServlet({"/detailvid/*"
	
})
public class detailSeverlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDao vidDao = new VideoImpl();
		Video video = new Video();
		String path = req.getServletPath();
		String pathinfo = req.getPathInfo();
		pathinfo = pathinfo.substring(1);
		video = vidDao.FindById(pathinfo);
		
		if(path.contains("detailvid")){
			video.setViews(video.getViews()+1);
			vidDao.Update(video);
		}
		req.setAttribute("vidbyid", video);
		req.setAttribute("view", "/views/User/detail.jsp");
		req.getRequestDispatcher("/views/site/layout.jsp").forward(req, resp);
	}
}
