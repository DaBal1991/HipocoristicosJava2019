/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hipocoristicos;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author damia
 */
public class Modelo {

    private String usr, psw, tabla, bd, driver, ip, prefijoConexion, colUno, colDos;
    private Connection conexion;
    private ActionListener listener;

    public Modelo() {
        driver = "com.mysql.cj.jdbc.Driver";
        prefijoConexion = "jdbc:mysql://";
        ip = "127.0.0.1";
        bd = "hipocoristicos";
        tabla = "equivalencias";
        usr = "";
        psw = "";
        colUno = "Equivalencia_1";
        colDos = "Equivalencia_2";
        conexion = obtenerConexion();
    }

    public ArrayList<String> consulta(String nombre) {

        conexion = obtenerConexion();
        ArrayList<String> listado = new ArrayList();;
        String[] aux = nombre.split(" ");
        
        listado.add(nombre);

        for (int i = 0; i < aux.length; i++) {

            String q = "SELECT " + colDos + " FROM " + tabla + " WHERE " + colUno + " =\"" + aux[i] + "\"";

            try {

                Statement statement = conexion.createStatement();
                ResultSet resultSet = statement.executeQuery(q);

                while (resultSet.next() && !listado.contains(resultSet.getString(1))) {
                    listado.add(resultSet.getString(1));
                    aux[i] = resultSet.getString(1);
                    q = "SELECT " + colDos + " FROM " + tabla + " WHERE " + colUno + " =\"" + aux[i] + "\"";
                    resultSet = statement.executeQuery(q);
                }

                resultSet.close();
                statement.close();

            } catch (SQLException ex) {
                reportException(ex.getMessage());
            }

        }
        return listado;
    }

    public String comparar(String nombreUno, String nombreDos) {

        String isEquivalente = null;
        ArrayList<String> listadoUno = consulta(nombreUno);
        ArrayList<String> listadoDos = consulta(nombreDos);
        
        for(int i = 0; i < listadoUno.size(); i++){
            for(int j = 0; j < listadoDos.size(); j++){
                if(listadoUno.get(i).contains(listadoDos.get(j))){
                    isEquivalente = "Son equivalentes";
                }else if(listadoDos.get(j).contains(listadoUno.get(i))){
                    isEquivalente = "Son equivalentes";
                }else{
                    isEquivalente = "No son equivalentes";
                }
            }
        }
        
        return isEquivalente;
    }

    private Connection obtenerConexion() {
        if (conexion == null) {
            try {
                Class.forName(driver); // driver = "com.mysql.cj.jdbc.Driver";
            } catch (ClassNotFoundException ex) {
                reportException(ex.getMessage());
            }
            try { // prefijoConexion = "jdbc:mysql://";
                conexion
                        = DriverManager.getConnection(prefijoConexion + ip + "/" + bd, usr, psw);
            } catch (Exception ex) {
                reportException(ex.getMessage());
            }
            Runtime.getRuntime().addShutdownHook(new ShutDownHook());
        }
        return conexion;

    }

    private class ShutDownHook extends Thread {

        public void run() {
            try {
                if (conexion != null) {
                    conexion.close();
                }
            } catch (SQLException ex) {
                reportException(ex.getMessage());
            }
        }
    }

    public void addExceptionListener(ActionListener listener) {
        this.listener = listener;
    }

    private void reportException(String exception) {
        if (listener != null) {
            ActionEvent evt = new ActionEvent(this, 0, exception);
            listener.actionPerformed(evt);
        }
    }
}
