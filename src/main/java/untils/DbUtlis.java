package untils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtlis {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bbs?useUnicode=true&characterEncoding=utf-8";
            String user = "root";
            String password = "root";
            conn = DriverManager.getConnection(url, user, password);
            if (conn!=null){
                System.out.println("数据库连接成功");
            }

        } catch (Exception e) {
            System.out.println("连接失败");
            e.printStackTrace();
        }

        return conn;
    }
}
