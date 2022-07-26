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
import model.comment;

/**
 *
 * @author truon
 */
public class CommentDAO {

    public List<comment> getAll() {
                List<comment> list = new ArrayList<>();
        try {
            String sql = "select * from Comment";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<Record> listRecord = new RecordsDAO().getAllByid(rs.getInt(1));
                comment account = comment.builder()
                        .id(rs.getInt(1))
                        .content(rs.getString(2))
                        .createDate(rs.getDate(3))
                        .username(rs.getString(4))
                      //  .listRecord
                        .build();
               list.add(account);
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
