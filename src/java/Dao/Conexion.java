
package Dao;

import java.sql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class Conexion {
    public static Connection conectar() throws SQLException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("conexion realizada");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/cartera","root","");
        }
        catch(ClassNotFoundException ex){
            System.out.println("Problemas conectar al driver");
            return null;
        }
            
  
    }
}

