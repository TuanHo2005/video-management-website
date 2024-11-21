package com.asm.Servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.asm.Dao.UserDao;
import com.asm.Entity.User;

import Daoimpl.UserDaoimpl;
@WebServlet({
		"/indexSignup",
		"/signup/crud/index",
		"/signup/crud/create"
})
public class SingnupServlet extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	UserDao dao = new UserDaoimpl();
	User us = new User();
	try {
		BeanUtils.populate(us, req.getParameterMap());
		
	} catch (IllegalAccessException | InvocationTargetException e) {
		e.printStackTrace();
	}

	String path = req.getServletPath();
	if (path.contains("create")) {
		us.setId(dao.NewID());
		
		if(dao.create(us)<=0) {
			req.setAttribute("message", "Đăng ký thất bại");
		}else {
			req.setAttribute("message", "Đăng ký thành công");
		}
	}
	req.setAttribute("user", us);
	if (path.contains("indexSignup")) {
	req.setAttribute("view", "/views/User/Signup.jsp");
	}
	req.getRequestDispatcher("/views/site/layout.jsp").forward(req, resp);
	}

}
