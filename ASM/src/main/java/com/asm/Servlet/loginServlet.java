package com.asm.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.asm.Dao.UserDao;
import com.asm.Entity.User;

import Daoimpl.UserDaoimpl;


@WebServlet({"/login",
	"/indexLogin"
})
public class loginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idOrEmail = req.getParameter("Email");
	    String password = req.getParameter("password");
	    String path = req.getServletPath();
	    if (idOrEmail == null || password == null || idOrEmail.isEmpty() || password.isEmpty()) {
	        req.setAttribute("errorMessage", "hay nhap mat khau va email");
	        if (path.contains("indexLogin")) {
		    	req.setAttribute("view", "/views/User/Login.jsp");
		    	}
		    	req.getRequestDispatcher("/views/site/layout.jsp").forward(req, resp);
	        return;
	    }
	    UserDao dao = new UserDaoimpl();
	    User us = dao.FinduserbyIdOrEmail(idOrEmail, idOrEmail);
	    		
	    
	    if (us != null && us.getPassword().equals(password)) {
	        // Đăng nhập thành công, lưu thông tin người dùng vào session
	        req.getSession().setAttribute("user", us);
	        resp.sendRedirect(req.getContextPath() + "/indexvid");
	    } else {
	        // Đăng nhập thất bại
	        req.setAttribute("errorMessage", "email hoac mat khau khong dung");
	        resp.sendRedirect(req.getContextPath() + "/indexLogin");
	    }
	   
	    	}
	   
	}

