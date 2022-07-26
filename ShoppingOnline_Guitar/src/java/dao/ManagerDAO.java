/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.Shipping;
import model.managerOrder;

/**
 *
 * @author truon
 */
public class ManagerDAO {

    public List<Product> getAllProductBy() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from product";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(5))
                        .price(rs.getDouble(4))
                        .description(rs.getString(7))
                        .imageUrl(rs.getString(3))
                        .title(rs.getString(6))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteProduct(String id) {
        String sql = "delete from product where id = ? ";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertProduct(String id, String name, String image, String price, String quantity,
            String title, String description, String category) {
        String sql = "INSERT INTO [dbo].[product]\n"
                + "           ([id]\n"
                + "           ,[name]\n"
                + "           ,[image]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[title]\n"
                + "           ,[description]\n"
                + "           ,[cid])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setString(4, price);
            ps.setString(5, quantity);
            ps.setString(6, title);
            ps.setString(7, description);
            ps.setString(8, category);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editProduct(String name, String image, String price, String quantity,
            String title, String description, String category, String id) {
        String sql = "UPDATE [dbo].[product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[title] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[cid] = ?\n"
                + " WHERE id = ?";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, quantity);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, category);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        try {
            String sql = "select * from Account";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account account = Account.builder()
                        .id(rs.getInt(1))
                        .username(rs.getString(2))
                        .password(rs.getString(3))
                        .displayName(rs.getString(4))
                        .address(rs.getString(5))
                        .email(rs.getString(6))
                        .phone(rs.getString(7))
                        .permission((rs.getInt(8)))
                        .build();
                list.add(account);
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteAccount(String id) {
        String sql = "delete from Account where id = ? ";
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(ManagerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public List<Account> getAllAccountOS() {
//        List<Account> list = new ArrayList<>();
//        try {
//            String sql = "select * from account";
//            Connection conn = new DBContext().getConnection();
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                
//                 List<Order> listOrder = new OrderDAO().getAllOrder();
//
//                List<OrderDetail> listOrderDetail = new OrderDetailDAO().getAllorderDetail();
//
//                List<Shipping> listShipping = new ShippingDAO().getAllShipping();
//
//                
////                Order order = Order.builder()
////                        .totalPrice(rs.getDouble(9))
////                        .createdDate(rs.getString(10))
////                        .build();
////                OrderDetail pDetail = OrderDetail.builder()
////                        .productName(rs.getString(11))
////                        .build();
////
////                Shipping shipping = Shipping.builder()
////                        .name(rs.getString(12))
////                        .phone(rs.getString(13))
////                        .address(rs.getString(14))
////                        .build();
//
//                Account account = Account.builder()
//                        .id(rs.getInt(1))
//                        .username(rs.getString(2))
//                        .password(rs.getString(3))
//                        .displayName(rs.getString(4))
//                        .address(rs.getString(5))
//                        .email(rs.getString(6))
//                        .phone(rs.getString(7))
//                        .permission((rs.getInt(8)))
//                        .lis
//                        .orderDetail((List<OrderDetail>) pDetail)
//                        .shipping((List<Shipping>) shipping)
//                        .build();
//                list.add(account);
//            }
//        } catch (Exception ex) {
//            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
    public List<managerOrder> getAllAccountOS() {
        List<managerOrder> list = new ArrayList<>();
        try {
            String sql = "select Account.email,  Orders.created_date, OrderDetail.productName, Orders.totalPrice, Shipping.name, Shipping.phone, Shipping.address\n"
                    + "                   from Account inner join Orders on Account.id = Orders.shipping_id inner join OrderDetail on Orders.shipping_id = OrderDetail.order_id inner join\n"
                    + "                    Shipping on Orders.shipping_id = Shipping.id";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                managerOrder manager = managerOrder.builder()
                        .email(rs.getString(1))
                        .createdDate(rs.getString(2))
                        .productName(rs.getString(3))
                        .totalPrice(rs.getDouble(4))
                        .name(rs.getString(5))
                        .phone(rs.getString(6))
                        .address(rs.getString(7))
                        .build();
                list.add(manager);
            }
        } catch (Exception ex) {
            Logger.getLogger(managerOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

//    public static void main(String[] args) {
//        List<managerOrder> list = new ArrayList<>();
//        ManagerDAO m = new ManagerDAO();
//        list = m.getAllAccountOS();
//        System.out.println(list);
//    }

}
