package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class BookDAOimpl implements BookDAO {

    private Connection conn;

    public BookDAOimpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean addBooks(BookDtls b) {
        boolean f = false;
        try {
            String sql = "insert into book_dtls(bookName,author,price,bookCategory,status,photo,email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getBookName());
            ps.setString(2, b.getAuthor());
            
            // Assuming price is a double, adjust accordingly
            ps.setDouble(3, Double.parseDouble(b.getPrice()));
            
            ps.setString(4, b.getBookCategory());
            ps.setString(5, b.getStatus());
            ps.setString(6, b.getPhotoName());
            ps.setString(7, b.getEmail());

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();  // Consider logging this instead of printing stack trace
        }
        return f;
    }

    @Override
    public List<BookDtls> getAllBooks() {
        List<BookDtls> list = new ArrayList<>();
        BookDtls b = null;

        try {
            String sql = "select * from book_dtls";
            PreparedStatement pStatement = conn.prepareStatement(sql);
            ResultSet rs = pStatement.executeQuery();
            while (rs.next()) {
                b = new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookName(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));  // Adjust if price is numeric
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();  // Consider logging this instead of printing stack trace
        }
        return list;
    }

	@Override
	public BookDtls getBookById(int id) {
		
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				    b=new BookDtls();
				    b.setBookId(rs.getInt(1));
	                b.setBookName(rs.getString(2));
	                b.setAuthor(rs.getString(3));
	                b.setPrice(rs.getString(4));  // Adjust if price is numeric
	                b.setBookCategory(rs.getString(5));
	                b.setStatus(rs.getString(6));
	                b.setPhotoName(rs.getString(7));
	                b.setEmail(rs.getString(8));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return b;
		
	}

	@Override
	public boolean updateEditBooks(BookDtls b) {
		boolean f=false;
		try {
			String sql="update book_dtls set bookName=?,author=?,price=?,status=? where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());	
			ps.setInt(5, b.getBookId());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
					
		} catch (Exception e) {
		      e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public boolean deleteBooks(int id) {
		boolean f=false;
		try {
			String sql="delete from book_dtls where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return false;
	}

	public List<BookDtls> getNewBook() {
	    List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where bookCategory=? and status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "New");
	        ps.setString(2, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	        int i = 1;
	        while (rs.next() && i <= 4) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	            i++;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}

	@Override
	public List<BookDtls> getRecentBooks() {
		
		List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	        int i = 1;
	        while (rs.next() && i <= 4) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	            i++;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}

	@Override
	public List<BookDtls> getOldBooks() {
		
		List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where bookCategory=? and status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Old");
	        ps.setString(2, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	        int i = 1;
	        while (rs.next() && i <= 4) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	            i++;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}

	@Override
	public List<BookDtls> getAllRecentBook() {
		List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	        
	        while (rs.next()) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	           
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}

	@Override
	public List<BookDtls> getAllNewBook() {
		List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where bookCategory=? and status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "New");
	        ps.setString(2, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	     
	        while (rs.next()) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	            
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}

	@Override
	public List<BookDtls> getAllOldBook() {
		List<BookDtls> list = new ArrayList<>();
	    BookDtls b = null;
	    
	    try {
	        String sql = "select * from book_dtls  where bookCategory=? and status=? order by bookId DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Old");
	        ps.setString(2, "Active"); 
	        
	        ResultSet rs = ps.executeQuery();
	     
	        while (rs.next()) {
	            b = new BookDtls();
	            b.setBookId(rs.getInt(1));
	            b.setBookName(rs.getString(2));
	            b.setAuthor(rs.getString(3));
	            b.setPrice(rs.getString(4));  // Adjust if price is numeric
	            b.setBookCategory(rs.getString(5));
	            b.setStatus(rs.getString(6));
	            b.setPhotoName(rs.getString(7));
	            b.setEmail(rs.getString(8));
	            list.add(b);
	           
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list;
	}
	
	

	
	
	
    

}
