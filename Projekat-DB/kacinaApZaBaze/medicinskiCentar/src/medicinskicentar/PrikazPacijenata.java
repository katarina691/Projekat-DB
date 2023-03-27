/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicinskicentar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;


public class PrikazPacijenata {
    public static void svi() {
    TableView tv = ucitavanjeTabele();

        Button obrisi = new Button("Obrisi pacijenta iz tabele");
        //brisanje osobe
        obrisi.setOnAction(e -> {
            ObrisiPacijenta.obrisi();
        });

        Stage stage = new Stage();
        HBox hb = new HBox();
        hb.setSpacing(10);
        hb.getChildren().addAll(obrisi);

        BorderPane bp = new BorderPane();
        bp.setCenter(tv);
        bp.setBottom(hb);

        Scene scene = new Scene(bp, 900, 500);
        stage.setTitle("Spisak svih pacijenata ");
        stage.setScene(scene);
        stage.setResizable(true);
        stage.show();

    }

    public static TableView ucitavanjeTabele() {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/medicinskicentar", "root", "");
            st = con.createStatement();
            System.out.println("Uspesno povezano");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Nije uspelo povezivanje");
        }

        //pravljenje tabele
        TableView tv = new TableView();

        TableColumn<Integer, Pacijent> column0 = new TableColumn<>("JMBG");
        column0.setCellValueFactory(new PropertyValueFactory<>("JMBG"));
        
        TableColumn<Integer, Pacijent> column1 = new TableColumn<>("PIB");
        column1.setCellValueFactory(new PropertyValueFactory<>("PIB"));
        
        TableColumn<String, Pacijent> column2 = new TableColumn<>("IME PACIJENTA");
        column2.setCellValueFactory(new PropertyValueFactory<>("IME_PACIJENTA"));

        TableColumn<String, Pacijent> column3 = new TableColumn<>("TELEFON_PACIJENTA");
        column3.setCellValueFactory(new PropertyValueFactory<>("TELEFON_PACIJENTA"));

        tv.getColumns().addAll(column0, column1, column2, column3);
//iscitavanje iz baze i ubacivanje u tabelu
        try {

            String query = "SELECT * FROM Pacijent";
            rs = st.executeQuery(query);
            System.out.println("Uspesno iscitano");
            while (rs.next()) {

                tv.getItems().addAll(new  Pacijent(rs.getInt("JMBG"), rs.getInt("PIB"), rs.getString("IME_PACIJENTA"), rs.getString("TELEFON_PACIJENTA")));

            }

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Nema osoba");
        }
        return tv;
    }

}
