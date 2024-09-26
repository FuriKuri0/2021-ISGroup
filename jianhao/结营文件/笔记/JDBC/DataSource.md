## JDBC2.0提供了javax.[sql](https://so.csdn.net/so/search?q=sql&spm=1001.2101.3001.7020).DataSource接口，它负责建立与数据库的连接，

## 当在应用程序中访问数据库时不必编写连接数据库的代码，

## 直接引用DataSource获取数据库的连接对象即可。用于获取操作数据Connection对象。





定义一个JDBCUtils方法类

```
public class JDBCUtils {


    private static DataSource ds;
    
    
    static{
        try {
            Properties pro = new Properties();
            pro.load(JDBCUtils.class.getClassLoader().getResourceAsStream("Druil.properties"));
            ds = DruidDataSourceFactory.createDataSource(pro);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
   
    public static Connection getConnection() throws Exception{
        return ds.getConnection();
    }

		//在主函数中直接使用JDBCUtils.getConnection的方法，即可连接上数据库



    public static void Close(Statement stat,Connection conn) throws SQLException {
        Close(stat,conn,null);
    }

    public static void Close(Statement stat , Connection conn, ResultSet rs) throws SQLException {
        if(stat != null){
            stat.close();
        }
        if(conn != null){
            conn.close();
        }
        if(rs != null){
            rs.close();
        }
    }
}
```