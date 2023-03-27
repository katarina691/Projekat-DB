/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicinskicentar;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;


public class MedicinskiCentar extends Application {
    
    @Override
    public void start(Stage primaryStage) {
        Button unos = new Button("Unos novog pacijenta");
        unos.setOnAction(e -> {
            Unos.unesi();
        }); 
        //kada se unosi pacijent u polikliniku, PIB mora da bude vazeci u bazi podataka
        Button spisak = new Button("Spisak pacijenata");
        spisak.setOnAction(e -> {
            PrikazPacijenata.svi();
        });
          Button update = new Button("Update pacijenta");
        update.setOnAction(e -> {
            AzurirajPacijenta.update();
        });
        VBox vb = new VBox();
        vb.setPadding(new Insets(15, 10, 10, 40));
        vb.setSpacing(20);
        vb.getChildren().addAll(unos, spisak, update);

        Scene scene = new Scene(vb, 300, 250);

        primaryStage.setTitle("Pocetni meni");
        primaryStage.setScene(scene);
        primaryStage.show();
         }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
