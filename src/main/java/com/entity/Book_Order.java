package com.entity;

public class Book_Order {

    private int id;
    private String username;
    private String email;
    private String phno;
    private String fulladd;
    private String paymentType;

    public String getEmail() {
        return email;
    }

    public String getFulladd() {
        return fulladd;
    }

    public void setFulladd(String fulladd) {
        this.fulladd = fulladd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Book_Order{" +
                "email='" + email + '\'' +
                ", id=" + id +
                ", username='" + username + '\'' +
                ", phno='" + phno + '\'' +
                ", fulladd='" + fulladd + '\'' +
                ", paymentType='" + paymentType + '\'' +
                '}';
    }

    public void setEmail(String email) {
        this.email = email;






    }

    public void setOrderId(String s) {
    }

    public void setBookName(String boookName) {
    }

    public void setAuthor(String auhtor) {
    }
}
