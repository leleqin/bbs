package untils;

import org.apache.commons.beanutils.BeanUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoUtlis {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    //更新数据
    public void update(String sql,Object[] value){
        conn = DbUtlis.getConnection();
        try {
            pstmt = conn.prepareStatement(sql);
            //sql语句有几个预处理数据
            int count = pstmt.getParameterMetaData().getParameterCount();
            //存值
            if (value != null && value.length > 0) {
                for (int i = 0; i < count; i++) {
                    pstmt.setObject(i + 1, value[i]);
                }
            }
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtlis.dbClose(conn,pstmt);
        }
    }


    //查询通用方法封装

    public <T> List<T> query(String sql, Object[] value, Class<T> tClass) {
        List<T> list = new ArrayList<T>();
        //获取连接
        conn = DbUtlis.getConnection();
        //创建pas对象
        try {
            //检查sql语句
            pstmt = conn.prepareStatement(sql);
            //sql语句有几个预处理数据
            int count = pstmt.getParameterMetaData().getParameterCount();
            //存值
            if (value != null && value.length > 0) {
                for (int i = 0; i < count; i++) {
                    pstmt.setObject(i + 1, value[i]);
                }
            }
            //执行查询
            rs = pstmt.executeQuery();
            //获取元数据（不是错别字）
            ResultSetMetaData rsmd = rs.getMetaData();
            //获取数据行数
            int culumnCount = rsmd.getColumnCount();
            T t;
            //封装数据
            while (rs.next()) {
                //实例化要封装的对象
                t = tClass.newInstance();
//                遍历每一行每一列，封装数据
                for (int i = 0; i < culumnCount; i++) {
                    //获取每一列的名称
                    String culumnName = rsmd.getColumnName(i + 1);
                    //获取每一行的名称，值
                    Object objectValue = rs.getObject(culumnName);
                    //把数据封装到BeanUtils中
                    BeanUtils.copyProperty(t, culumnName, objectValue);
                }
                //将封装完的对象放到list集合中
                list.add(t);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DbUtlis.dbClose(conn,pstmt,rs);
        }
        return null;
    }

}
