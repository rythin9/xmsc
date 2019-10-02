package dao;

import entity.Student;
import entity.User;
import util.DButil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class userDao {
    public User show(String name) throws SQLException {
        Connection con= DButil.getcon();
        String sql="select * from XM_USERS  where name=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,name);
        ResultSet res=pst.executeQuery();
        while (res.next()) {
            User u=new User();
            u.setId(res.getInt("id"));
            u.setName(res.getString("name"));
            u.setPassword(res.getString("password"));
            return u;
           }
       // res.close();
        return null;
    }
    public void  addUser(String name,String password) throws SQLException {
        Connection con= DButil.getcon();
        String  sql="insert into XM_USERS(id,name,password,shoppingcar_id) VALUES(STUDENT_ID_SEQ.NEXTVAL,?,?,null)";
        PreparedStatement pst=con.prepareStatement(sql);//预处理
        pst.setString(1,name);
        pst.setString(2,password);
        pst.executeQuery();
    }
    public  User findUser(String name,String pwd) throws SQLException {
        Connection con= DButil.getcon();
        String sql="select * from XM_USERS where name=? and PASSWORD=?";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,name);
        pst.setString(2,pwd);
        ResultSet res=pst.executeQuery();
        while (res.next()){
            User u=new User();
            u.setName(res.getString("name"));
            u.setPassword(res.getString("password"));
            return u;
        }
        return  null;
    }

    public static void main(String[] args) throws SQLException {
/*
        User u=new User();
        userDao userDao=new userDao();
       u=userDao.show("host");
       System.out.println(u.getId());
        String name="admin";
        String psw="123";
        userDao.addUser(name,psw);
*/

    }


}
