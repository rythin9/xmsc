package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//连接数据库的对象
public class DButil {
    //建立连接
    public static Connection getcon() throws SQLException {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con= DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:XE",
                    "xmsc",
                    "123123");
            return con;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    return null;
    }

    public static void main(String[] args) {
        try {
            System.out.println(getcon());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}
