/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sjgar
 */
public class Conexion {
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String user = "root";
    private static final String pass = "admin"; /* Contraseña de cada uno */
    private static final String url = "jdbc:mysql://localhost:3306/testturing"; /* Si amerita el caso editar el puerto de conexión */
    public static Connection conexion;
    
    public static Connection obtenerconexion (){
        try{
            if(conexion == null){
                Class.forName(driver);
                conexion = DriverManager.getConnection(url,user,pass);
            }
            return conexion;
        } catch (SQLException e){
            throw new RuntimeException("Conexión fallida" , e);
        } catch (ClassNotFoundException e){
            throw new RuntimeException("Clase no encontrada", e);
        }
        
    }
}
