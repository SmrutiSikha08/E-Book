package com.DAO;

import com.entity.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



  public  class CartDAOImpl implements CartDAO {

    private Connection conn;

    public CartDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addCart(Cart c) {
        boolean f = false;
        try {
            // Check if there are only six columns in the cart table, then use only six placeholders in SQL
            String sql = "INSERT INTO cart(bid, uid, bookName, author, price, totalPrice) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getBid());
            ps.setInt(2, c.getUserId());
            ps.setString(3, c.getBoookName());  // Corrected method name
            ps.setString(4, c.getAuhtor());    // Corrected method name
            ps.setDouble(5, c.getPrice());
            ps.setDouble(6, c.getTotalPrice());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error in addCart: " + e.getMessage());
        }
        return f;
    }

    @Override
    public List<Cart> getBookbyUser(int userId) {
        List<Cart> List = new ArrayList<Cart>();

        Cart c = null;
          double totalPrice =0 ;
        try{
          String sql = "select * from cart where uid = ?";
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setInt(1, userId);

          ResultSet rs = ps.executeQuery();

          while (rs.next()){

              c = new Cart();
              c.setCid(rs.getInt(1));
              c.setBid(rs.getInt(2));
              c.setUserId(rs.getInt(3));
              c.setBoookName(rs.getString(4));
              c.setAuhtor(rs.getString(5));
              c.setPrice(rs.getDouble(6));


             totalPrice=totalPrice+rs.getDouble(7);
             c.setTotalPrice(totalPrice);

             List.add(c);

          }
        }
        catch(Exception e){

            e.printStackTrace();
        }





        return List;
    }

      @Override
      public boolean deleteBook(int bid, int uid,int cid) {
          boolean f = false;
          try {
              String sql = "delete from cart where bid = ? and uid=? and cid=?";
              PreparedStatement ps = conn.prepareStatement(sql);
              ps.setInt(1, bid);
              ps.setInt(2, uid);
              ps.setInt(3,cid);
              int i = ps.executeUpdate();

              if (i == 1) {
                  f = true;
              }
          } catch (SQLException e) {
              e.printStackTrace();
          }
          return f;
      }

  }
