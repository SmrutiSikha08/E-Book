package com.DAO;

import com.entity.Book_Order;

import java.util.List;

public interface BookOrderDAO {



    public boolean saveOrder(List<Book_Order> b);

}
