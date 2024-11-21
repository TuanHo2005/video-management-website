package com.asm.Servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;


import com.asm.Dao.VideoDao;

import com.asm.Entity.Video;


import Daoimpl.VideoImpl;


@WebServlet({
"/vid/crud/index",
"/vid/crud/edit/*",
"/vid/crud/create",
"/vid/crud/update",
"/vid/crud/delete",
"/vid/crud/reset"
})
public class adminVideoServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("utf-8");
	resp.setCharacterEncoding("utf-8");
	VideoDao dao = new VideoImpl();		
	Video form = new Video();
	try {
		BeanUtils.populate(form, req.getParameterMap());
		
	} catch (IllegalAccessException | InvocationTargetException e) {
		e.printStackTrace();
	}

	String path = req.getServletPath();
	
	if(path.contains("edit")) {
		form = dao.FindById(req.getPathInfo().substring(1));
	}else if (path.contains("create")) {
		dao.Create(form);
	}else if(path.contains("update")) {
		dao.Update(form);
	}else if (path.contains("delete")) {
		String id = req.getParameter("id");
		dao.deleteById(id);
	}else if (path.contains("reset")) {
		form = new Video();
	}
	
	
	List<Video> list = dao.finAll();
	
	req.setAttribute("video", form);
	req.setAttribute("videos", list);
	req.setAttribute("view", "/views/admin/videos/video.jsp");
	req.getRequestDispatcher("/views/admin/home/home.jsp").forward(req, resp);
}
}
	

