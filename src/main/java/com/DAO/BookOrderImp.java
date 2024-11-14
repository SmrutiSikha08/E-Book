package com.DAO;

import com.entity.Book_Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class BookOrderImp implements BookOrderDAO {

    private Connection conn;

    public BookOrderImp(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean saveOrder(List<Book_Order> orders) {
        boolean success = false;
        PreparedStatement ps = null;

        try {
            String sql = "INSERT INTO book_order (id, username, email, phno, fulladd, payment_type) VALUES (?, ?, ?, ?, ?, ?)";
            conn.setAutoCommit(false);
            ps = conn.prepareStatement(sql);

            for (Book_Order order : orders) {
                ps.setInt(1, order.getId());
                ps.setString(2, order.getUsername());
                ps.setString(3, order.getEmail());
                ps.setString(4, order.getPhno());
                ps.setString(5, order.getFulladd());
                ps.setString(6, order.getPaymentType());

                ps.addBatch();
            }

            int[] counts = ps.executeBatch();
            conn.commit();
            success = counts.length == orders.size();  // Check if all orders were added
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException rollbackEx) {
                rollbackEx.printStackTrace();
            }
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                conn.setAutoCommit(true);
            } catch (SQLException closeEx) {
                closeEx.printStackTrace();
            }
        }
        return success;
    }
}
