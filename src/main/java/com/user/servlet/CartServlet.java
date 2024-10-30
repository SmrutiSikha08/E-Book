package com.user.servlet;

import com.DAO.BookDAOimpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{

            int bid=Integer.parseInt(req.getParameter("bid"));
            int uid=Integer.parseInt(req.getParameter("uid"));

            BookDAOimpl dao =new BookDAOimpl(DBConnect.getConn());
            BookDtls b=dao.getBookById(bid);

            Cart c=new Cart();
            c.setBid(bid);
            c.setUserId(uid);
            c.setBoookName(b.getBookName());
            c.setAuhtor(b.getAuthor());
            c.setPrice(Double.parseDouble(b.getPrice()));
            c.setTotalPrice(Double.parseDouble(b.getPrice()));


            CartDAOImpl dao2=new CartDAOImpl(DBConnect.getConn());
            boolean f =dao2.addCart(c);

            HttpSession session=req.getSession();

            if(f)
            {
                session.setAttribute("addCart","Book Added To Cart Successfully ");
                resp.sendRedirect("all_new_book.jsp");

            }else {
                session.setAttribute("Failed","Something Went Wrong ");
                resp.sendRedirect("all_new_book.jsp");
            }





        } catch ( Exception e ) {
            e.printStackTrace();
        }


    }
}