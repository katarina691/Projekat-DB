/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicinskicentar;

import javafx.scene.control.Alert;


public class AlertBoxUpdated {
     public static void alert() {

        Alert al = new Alert(Alert.AlertType.INFORMATION);
        al.setHeaderText("Uspesno ste azurirali pacijenta iz tabele!");
        al.setTitle("Success!");
        al.show();
    }
}
