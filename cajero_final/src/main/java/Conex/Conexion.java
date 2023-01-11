package Conex;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    Connection con;
    
    public Conexion() {
        
        try {
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/cajero","root","");
        
        } catch (Exception e) {
            
            System.err.println("Error " + e);
        
        }
    }
    
    public Connection getConnection() {
        
        try {
          
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/cajero","root","");
        
        } catch (Exception e) {
            
            System.err.println("Error " + e);
        
        }
        
       return con;
    
    }
}
