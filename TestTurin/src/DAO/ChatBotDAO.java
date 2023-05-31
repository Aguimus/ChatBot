/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;
import java.util.ArrayList;
/**
 *
 * @author sjgar
 */
public interface ChatBotDAO {
    int buscarPregunta(String s);
    ArrayList<String> buscarListPre();
    String buscarRespuesta(int i);
    int guardarPregunta(String pre);
    void guardarRespuesta(String s, int i);
}
