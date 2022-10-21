package com.son.biz.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCUtil {
    static final String driverName="com.mysql.cj.jdbc.Driver";
    static final String url="jdbc:mysql-url";
    static final String user="user";
    static final String passwd="pw";
    public static Connection connect() {
        Connection conn=null;
        try {
            Class.forName(driverName);

            conn=DriverManager.getConnection(url, user, passwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void disconnect(PreparedStatement pstmt,Connection conn) {
        try {
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
