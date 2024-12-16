/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hipocoristicos;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author damia
 */
public class Controlador implements ActionListener {

    private Vista v;
    private Modelo m;

    public Controlador(Vista v, Modelo m) {
        this.v = v;
        this.m = m;
        this.v.btnBuscar.addActionListener(this);
    }

    public void iniciar() {
        v.setTitle("Hipocoristicos");
        v.setLocationRelativeTo(null);
        v.setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        v.labelResultado.setText(m.comparar(v.txtNombreUno.getText(), v.txtNombreDos.getText()));
    }
}
