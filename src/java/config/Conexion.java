package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Conexion {
    
    Connection con;
    String url="jdbc:mysql://localhost:3310/smartzone";
    String user="root";
    String pass="";

    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
            System.out.println("Error: "+e);
        }
        return con;
    }
    
//    public static void main(String[] args) {
//        Conexion cn = new Conexion();
//        Statement st;
//        ResultSet rs;
//        try {
//            st = cn.con.createStatement();
//            rs = st.executeQuery("select * from producto");
//            
//            while (rs.next()){
//                System.out.println(rs.getInt("id")+""+rs.getString("Nombres"));
//            }
//            cn.con.close();
//        } catch (Exception e) {
//        }
//    }
    
    
}
