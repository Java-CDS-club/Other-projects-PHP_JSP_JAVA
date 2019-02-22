/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.awt.event.ActionEvent;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import java.awt.Image;
import java.util.Enumeration;
import javax.swing.*;

/**
 *
 * @author master
 */

public class last implements SerialPortEventListener,java.awt.event.ActionListener {

    javax.swing.JFrame f1= new JFrame("Parking Monitoring System");
    JLabel l1;
    JLabel l2;
    JLabel back;
    JLabel totalvacant;
    JLabel totaloccupied;
    JButton reset= new JButton("reset");
    JButton logout= new JButton("logout");

    int id1=0;
    int id2=0;
    

    ImageIcon img1 = new ImageIcon("src/images/noparked.jpg");
    ImageIcon img2 = new ImageIcon("src/images/parked.jpg");
    ImageIcon backimage = new ImageIcon("src/images/backgorund.JPG");

    
        SerialPort serialPort;
    	private BufferedReader input;
	/** The output stream to the port */
	private OutputStream output;
	/** Milliseconds to block while waiting for port open */
	private static final int TIME_OUT = 2000;
	/** Default bits per second for COM port. */
	private static final int DATA_RATE = 9600;
        private static final String PORT_NAMES[] = {"COM3"};
    public void intComp()
    {
    System.setProperty("gnu.io.rxtx.SerialPorts", "COM3");
    CommPortIdentifier portId = null;
    Enumeration portEnum = CommPortIdentifier.getPortIdentifiers();
   		while (portEnum.hasMoreElements())
                {
			CommPortIdentifier currPortId = (CommPortIdentifier) portEnum.nextElement();
			for (String portName : PORT_NAMES)
                        {
				if (currPortId.getName().equals(portName))
                                {
					portId = currPortId;
					break;
				}
			}
		}
		if (portId == null)
                {
			System.out.println("Could not find COM port.");
			return;
		}


    		try {
			// open serial port, and use class name for the appName.
			serialPort = (SerialPort) portId.open(this.getClass().getName(),
					TIME_OUT);

			// set port parameters
			serialPort.setSerialPortParams(DATA_RATE,
					SerialPort.DATABITS_8,
					SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE);

			// open the streams
			input = new BufferedReader(new InputStreamReader(serialPort.getInputStream()));
			output = serialPort.getOutputStream();

			// add event listeners
			serialPort.addEventListener(this);
			serialPort.notifyOnDataAvailable(true);
		} catch (Exception e) {
			System.err.println(e.toString());
		}





    }

    public static void main(String args[])
    {
        String user_type=args[0];



        //System.out.println("hi bhai");
        last ob1 = new last();
        ob1.intComp();
        ob1.f1.setVisible(true);
        ob1.f1.setLayout(null);
        ob1.f1.setBounds(20, 20, 1000, 600);
        //
         ob1.f1.setTitle("Parking Monitoring System :"+user_type);
        //
        ob1.l1= new JLabel("");
        ob1.f1.add(ob1.l1);
        ob1.l1.setBounds(302, 103, 300, 100);
        ob1.l2= new JLabel("");
        ob1.l2.setBounds(202,103, 200, 100);
        ob1.f1.add(ob1.l2);


        ob1.back= new JLabel("");
        ob1.f1.add(ob1.back);
        ob1.back.setIcon(ob1.backimage);
        ob1.back.setBounds(45, 20, 1000, 500);

        // total and vacant

        ob1.totalvacant= new JLabel("initializing...");
        ob1.totalvacant.setBounds(400,460, 200, 100);
        ob1.f1.add(ob1.totalvacant);

        ob1.totaloccupied= new JLabel("initializing...");
        ob1.totaloccupied.setBounds(500,460, 200, 100);
        ob1.f1.add(ob1.totaloccupied);

        //
        // now reset and logout button
        //
        ob1.reset.setBounds(700, 25, 100, 35);
        ob1.logout.setBounds(820, 25, 100, 35);
        ob1.f1.add(ob1.logout);
        ob1.f1.add(ob1.reset);
        ob1.reset.addActionListener(ob1);
        ob1.logout.addActionListener(ob1);
        

        


    }


    public void serialEvent(SerialPortEvent spe) {
   
       // System.out.println("bar bar serial event call hora");



            if (spe.getEventType() == SerialPortEvent.DATA_AVAILABLE)
                {
			try {
				String inputLine=input.readLine();
				System.out.println(inputLine);
                                //l1.setText(inputLine);

                                int occ=0; int vac=0; int total=2;

                                if(inputLine.equals("i d 1 _ c a r _ n o t _ p a r k e d "))
                                {
                                l1.setIcon(img1);
                                id1=0;
                                
                                vac++;
                                if(occ>0)
                                {
                                 occ--;
                                }

                                }
                                if(inputLine.equals("i d 1 _ c a r _ p a r k e d "))
                                {
                                l1.setIcon(img2);
                                id1=1;
                                occ++;
                                 if(vac>0)
                                 {
                                 vac--;
                                 }
                                }
                                if(inputLine.equals("i d 2 _ c a r _ n o t _ p a r k e d "))
                                {
                                l2.setIcon(img1);
                                id2=0;
                                vac++;
                                if(occ>0)
                                {
                                 occ--;
                                }
                                
                                }
                                if(inputLine.equals("i d 2 _ c a r _ p a r k e d "))
                                {
                                l2.setIcon(img2);
                                id1=1;

                                occ++;
                                 if(vac>0)
                                 {
                                 vac--;
                                 }
                                
                                }








			} catch (Exception e) {
				System.err.println(e.toString());
			}
		}
        
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void actionPerformed(ActionEvent e) {
        Object myob=e.getSource();
        if(myob.toString().contains("reset"))
        {
              System.out.println("reset caleed");
              
        }
 else
 {
  System.out.println("logout caleed");
 }
     
        
        //throw new UnsupportedOperationException("Not supported yet.");
    }



    
}
