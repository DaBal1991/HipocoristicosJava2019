/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package hipocoristicos;

/**
 *
 * @author damia
 */
public class Hipocoristicos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Modelo m = new Modelo();
        Vista v = new Vista();
        Controlador c = new Controlador(v, m);
        
        c.iniciar();

    }
    
}
