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
import model.Record;

/**
 *
 * @author truon
 */
public class RecordsDAO {

    public List<Record> getAll() {
  List<Record> list = new ArrayList<>();
        try {
            String sql = "select * from Record";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Record account = Record.builder()
                        .id(rs.getInt(1))
                        .content(rs.getString(2))
                        .cid(rs.getInt(3))
                        .build();
               list.add(account);
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void save(String recordContent, int cid) {
 try {
            String sql = "INSERT INTO [dbo].[Record]\n" +
"           ([content]\n" +
"           ,[cid])\n" +
"     VALUES\n" +
"           (?\n" +
"           ,?)";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, recordContent);
            ps.setInt(2, cid);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
    }

    List<Record> getAllByid(int cid) {
        List<Record> list = new ArrayList<>();
        try {
            String sql = "SELECT * from record where cid= ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Record product = Record.builder()
                        .id(rs.getInt(1))
                        .content(rs.getString(2))
                        .cid(rs.getInt(3))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    }
    
