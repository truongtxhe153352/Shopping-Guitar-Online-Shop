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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.OrderDetail;

/**
 *
 * @author truon
 */
public class OrderDetailDAO {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {

            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([order_id]\n"
                    + "           ,[productName]\n"
                    + "           ,[productImage]\n"
                    + "           ,[productPrice]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId); // để nó chung chỉ set một lần
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) { // duyệt với mỗi sản phẩm trên giỏ hàng và set lại giá trị
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getProduct().getName());
                ps.setString(3, cart.getProduct().getImageUrl());
                ps.setDouble(4, cart.getProduct().getPrice());
                ps.setDouble(5, cart.getProduct().getQuantity());
                ps.executeUpdate();
                // cứ mỗi sản phẩm trên giỏ hàng thì insert vào database một lần
            }
        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

     public List<OrderDetail> getAllorderDetail() {
        List<OrderDetail> list = new ArrayList<>();
        try {
            String sql = "select * from OrderDetail";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OrderDetail product = OrderDetail.builder()
                        .id(rs.getInt(1))
                        .orderId(rs.getInt(2))
                        .productName(rs.getString(3))
                        .productImage(rs.getString(4))
                        .productPrice(rs.getDouble(5))
                        .quantity(rs.getInt(6))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
