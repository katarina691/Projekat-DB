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
import javafx.event.ActionEvent;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;


public class Unos {
     public static void unesi() {
         
    Stage stage = new Stage();
        Label jmbg = new Label("JMBG");
        Label pib = new Label("PIB");
        Label ime = new Label("Ime");
        Label telefon = new Label("Broj telefona");
        
        TextField tf1 = new TextField();
        TextField tf2 = new TextField();
        TextField tf3 = new TextField();
        TextField tf4 = new TextField();
        Button unesi = new Button("Unesi");
        //upisivanje u bazu podataka klikom na dugme unesi pomocu preparedStatement
        unesi.setOnAction((ActionEvent e) -> {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/medicinskicentar", "root", "");
                Statement st = con.createStatement();

                PreparedStatement ps = con.prepareStatement("INSERT INTO pacijent (JMBG, PIB, IME_PACIJENTA, TELEFON_PACIJENTA) VALUES(?, ?, ?, ?)");

                ps.setInt(1, Integer.parseInt(tf1.getText()));
                ps.setInt(2, Integer.parseInt(tf2.getText()));
                ps.setString(3, tf3.getText());
                 ps.setString(4, tf4.getText());

                ps.execute();
                AlertBoxUnet.alert();
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Unos.class.getName()).log(Level.SEVERE, null, ex);
            }            
            stage.close();
    });

        HBox hb1 = new HBox(15);
        hb1.getChildren().addAll(jmbg, tf1);
        HBox hb2 = new HBox(15);
        hb2.getChildren().addAll(pib, tf2);
        HBox hb3 = new HBox(15);
        hb3.getChildren().addAll(ime, tf3);
        HBox hb4 = new HBox(15);
        hb4.getChildren().addAll(telefon, tf4);
        

        VBox vb1 = new VBox(20);
        vb1.getChildren().addAll(hb1, hb2, hb3, hb4, unesi);
        vb1.setAlignment(Pos.CENTER);
        StackPane sp = new StackPane();
        sp.getChildren().addAll(vb1);

        Scene scene = new Scene(sp, 350, 300);
        stage.setTitle("Unos pacijenta");
        stage.setScene(scene);
        stage.show();
}
}