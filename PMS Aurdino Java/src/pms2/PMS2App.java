/*
 * PMS2App.java
 */

package pms2;

import org.jdesktop.application.Application;
import org.jdesktop.application.SingleFrameApplication;

/**
 * The main class of the application.
 */
public class PMS2App extends SingleFrameApplication {

    /**
     * At startup create and show the main frame of the application.
     */
    @Override protected void startup() {
        show(new PMS2View(this));
    }

    /**
     * This method is to initialize the specified window by injecting resources.
     * Windows shown in our application come fully initialized from the GUI
     * builder, so this additional configuration is not needed.
     */
    @Override protected void configureWindow(java.awt.Window root) {
    }

    /**
     * A convenient static getter for the application instance.
     * @return the instance of PMS2App
     */
    public static PMS2App getApplication() {
        return Application.getInstance(PMS2App.class);
    }

    /**
     * Main method launching the application.
     */
    public static void main(String[] args) {
        launch(PMS2App.class, args);
    }
}
