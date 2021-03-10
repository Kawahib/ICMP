package application;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class Main extends Application{
	/**  Cria um root static para passar ao controller  **/
	private static BorderPane root = new BorderPane();
	
	/** Cria um metodo acessador getRoot para retornar root para o controller usar **/
	public static BorderPane getRoot(){ return root; }

	@Override
	public void start(Stage stage) throws IOException{
		BorderPane borderPane = FXMLLoader.load(getClass().getResource("/view/Menu.fxml"));

		// constroi a scene usando o root static
		root.setTop(borderPane);

		Scene scene = new Scene(root, 640, 480);
		// Adiciona uma imagem a IU
		stage.setTitle("ICMP - Intensive Care Management Program");
		stage.getIcons().add(new Image("/logo.png"));
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());

		stage.setScene(scene);
		stage.show();
	}
	public static void main(String[] args){ launch(args); }
}
