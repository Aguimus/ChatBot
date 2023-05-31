/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author sjgar
 */
public class ChatBotDAOImp implements ChatBotDAO {
    
    @Override
    public int buscarPregunta(String s) {
        try {
            int ind;
            Connection con = Conexion.obtenerconexion();
            String sql = "SELECT * FROM pregunta p WHERE p.pregunta like ?;";
            PreparedStatement ps;
            ps = con.prepareStatement(sql);
            ps.setString(1, s);
            ResultSet rs = ps.executeQuery();
            rs.next();
            ind = rs.getInt("cod_pregunta");
            ps.close();
            return ind; 
        } catch (Exception ex) {
            throw new RuntimeException("Error en la consulta" , ex);
        }
    }
    
    @Override
    public ArrayList<String> buscarListPre() {
        try {
            ArrayList<String> a = new ArrayList<>();
            Connection con = Conexion.obtenerconexion();
            String sql = "SELECT pregunta FROM pregunta;";
            PreparedStatement ps;
            ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                a.add(rs.getString("pregunta"));
            }
            ps.close();
            return a; 
        } catch (Exception ex) {
            throw new RuntimeException("Error en la consulta" , ex);
        }
    }
    
    @Override
    public String buscarRespuesta(int i) {
        try {
            String sal;
            Connection con = Conexion.obtenerconexion();
            String sql = "SELECT respuesta FROM respuesta r WHERE r.cod_pregunta = ? ORDER BY RAND() LIMIT 1;";
            PreparedStatement ps;
            ps = con.prepareStatement(sql);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            rs.next();
            sal = rs.getString("respuesta");
            ps.close();
            return sal; 
        } catch (Exception ex) {
            throw new RuntimeException("Error en la consulta" , ex);
        }
    }
  
    
    @Override
    public int guardarPregunta(String pre){
        try {
            int sal;
            Connection con = Conexion.obtenerconexion();
            String sql = "INSERT INTO pregunta (pregunta) VALUES (?);";
            PreparedStatement ps;
            ps = con.prepareStatement(sql);
            ps.setString(1, pre);
            ps.executeUpdate();
            sql = "SELECT cod_pregunta FROM pregunta r WHERE pregunta like ?;";
            ps = con.prepareStatement(sql);
            ps.setString(1, pre);
            ResultSet rs = ps.executeQuery();
            rs.next();
            sal = rs.getInt("cod_pregunta");
            ps.close();
            System.out.println(sal);
            return sal; 
        } catch (Exception ex) {
            throw new RuntimeException("Error en el guardado" , ex);
        }
    }
    
    @Override
    public void guardarRespuesta(String s, int i){
        try {
            Connection con = Conexion.obtenerconexion();
            String sql = "INSERT INTO respuesta (respuesta, cod_pregunta) VALUES (?,?);";
            PreparedStatement ps;
            ps = con.prepareStatement(sql);
            ps.setString(1, s);
            ps.setInt(2, i);
            ps.executeUpdate();
            ps.close();
        } catch (Exception ex) {
            throw new RuntimeException("Error en el guardado" , ex);
        }
    }

    
}
