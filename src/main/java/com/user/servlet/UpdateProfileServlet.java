package com.user.servlet;

import com.DAO.UserDAOimpl;
import com.DB.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String password = req.getParameter("password");

            User us = new User();
            us.setId(id);
            us.setName(name);
            us.setEmail(email);
            us.setPhno(phno);

            HttpSession session = req.getSession();
            UserDAOimpl dao = new UserDAOimpl(DBConnect.getConn());

            boolean f = dao.CheckPassword(id, password);
            if (f) {
                boolean f2 = dao.updateProfile(us);
                if (f2) {
                    session.setAttribute("succMsg", "User Profile Updated Successfully");
                    resp.sendRedirect("edit_profile.jsp");
                } else {
                    session.setAttribute("errorMsg", "Something went wrong on the server");
                    resp.sendRedirect("edit_profile.jsp");
                }
            } else {
                session.setAttribute("errorMsg", "Your Password is Incorrect");
                resp.sendRedirect("edit_profile.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
