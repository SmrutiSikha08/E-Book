package com.entity;

public class orderDtls {
    private int id;
    private String orderId;
    private String userName;
    private String email;
    private String adress;
    private String phoneNo;
    private String bookName;
    private String bookAuthor;
    private int price;
    private String paymentType;

    public orderDtls() {
        super();
        //TODO Auto-generate constructor stub
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public String getUserName() {
        return userName;
    }

    public String getEmail() {
        return email;
    }

    public String getAdress() {
        return adress;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public int getPrice() {
        return price;
    }

    public String getPaymentType() {
        return paymentType;
    }
}
