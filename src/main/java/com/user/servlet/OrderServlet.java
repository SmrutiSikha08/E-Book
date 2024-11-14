package com.user.servlet;

import com.DAO.BookOrderImp;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.Book_Order;
import com.entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession();

            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("username");
            String email = req.getParameter("email");
            String phno = req.getParameter("phno");
            String address = req.getParameter("inputAddress");
            String landmark = req.getParameter("landmark");
            String city = req.getParameter("city");
            String state = req.getParameter("state");
            String pincode = req.getParameter("pincode");
            String paymentType = req.getParameter("payment");

            String fullAdd = address + ", " + landmark + ", " + city + ", " + state + ", " + pincode;

            CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
            List<Cart> blist = dao.getBookbyUser(id);

            BookOrderImp dao2 = new BookOrderImp(DBConnect.getConn());
            ArrayList<Book_Order> orderList = new ArrayList<>();
            Random r = new Random();

            for (Cart c : blist) {
                Book_Order o = new Book_Order();
                o.setOrderId("BOOK-ord-00" + r.nextInt(1000));
                o.setUsername(name);
                o.setEmail(email);
                o.setPhno(phno);
                o.setFulladd(fullAdd);
                o.setBookName(c.getBoookName());  // Updated method name
                o.setAuthor(c.getAuhtor());       // Updated method name
                o.setPaymentType(paymentType);
                orderList.add(o);
            }


            if ("noselect".equals(paymentType)) {
                session.setAttribute("failedMsg", "Please Choose Payment Method");
                resp.sendRedirect("checkout.jsp");
            } else {
                boolean isSaved = dao2.saveOrder(orderList);

                if (isSaved) {
                    resp.sendRedirect("order_Success.jsp");
                } else {
                    session.setAttribute("failedMsg", "Your Order Failed");
                    resp.sendRedirect("checkout.jsp");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
