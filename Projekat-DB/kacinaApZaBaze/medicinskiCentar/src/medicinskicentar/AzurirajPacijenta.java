/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicinskicentar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;


public class AzurirajPacijenta {
    public static void update() {

        Stage stage = new Stage();
        Button obrisi = new Button("Update");
        TextField tf1 = new TextField();
        tf1.setMinWidth(50);
        Label lb1 = new Label("Ukucajte JMBG pacijenta ciji broj \n"
                + "telefona zelite da promenite:  ");
        Label lb2 = new Label("Ukucajte novi broj telefona za pacijenta: ");
        TextField tf2 = new TextField();
        tf2.setMinWidth(50);
        //azuriranje osobe
        obrisi.setOnAction(e -> {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/medicinskicentar", "root", "");
                Statement st = con.createStatement();

                PreparedStatement ps = con.prepareStatement("UPDATE pacijent SET TELEFON_PACIJENTA=? WHERE JMBG=?");

                ps.setInt(2, Integer.parseInt(tf1.getText()));
                ps.setString(1, tf2.getText());

                ps.execute();
                AlertBoxUpdated.alert();
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Unos.class.getName()).log(Level.SEVERE, null, ex);
            }
        });

        VBox vb1 = new VBox();
        vb1.setSpacing(9);
        vb1.getChildren().addAll(lb1, tf1, lb2, tf2, obrisi);
        StackPane sp = new StackPane();
        sp.setPadding(new Insets(10, 10, 10, 10));
        sp.getChildren().addAll(vb1);

        Scene scene = new Scene(sp, 350, 300);
        stage.setTitle("Update pacijenta");
        stage.setScene(scene);
        stage.show();

}
}