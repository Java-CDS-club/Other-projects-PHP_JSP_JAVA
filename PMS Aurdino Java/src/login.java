
import java.awt.event.ActionEvent;
import java.util.EventListener;
import javax.swing.JFrame;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.swing.*;
/**
 *
 * @author master
 */
public class login implements java.awt.event.ActionListener{
    public static javax.swing.JFrame login_frame= new JFrame("WELCOME TO PMS");
    public static JLabel back_label = new JLabel("");
    public static ImageIcon back_image = new ImageIcon("src/images/back_login.JPG");
    public static JLabel username_label = new JLabel("USERNAME :");
    public static JLabel password_label = new JLabel("PASSWORD :");
    public static JTextField username = new JTextField();
    public static JPasswordField password = new JPasswordField();
  
    public static JButton submit = new JButton("SUBMIT");


    public static void main(String args[])
    {   
        login myob1=new login();
        login_frame.setVisible(true);
        login_frame.setLayout(null);
        login_frame.setBounds(20, 20, 1000, 600);
        back_label.setBounds(0, 0, 600, 600);
        back_label.setIcon(back_image);
        login_frame.add(back_label);

        username_label.setBounds(650, 210, 500, 80);
        password_label.setBounds(650, 290, 500, 80);
        login_frame.add(username_label);
        login_frame.add(password_label);


        username.setBounds(750, 225, 190, 40);
     
        password.setBounds(750, 305, 190, 40);
        login_frame.add(username);
        login_frame.add(password);


        submit.setBounds(750, 375, 100, 40);
        submit.addActionListener(myob1);

        login_frame.add(submit);
        


    }


    public void actionPerformed(ActionEvent e) {
        last a = new last();
        String arg[]={""};
        String uname=(String)username.getText();
        //String pass=password.getPassword().toString();
        char pass[];
        pass = password.getPassword();
        String pass2=new String(pass);
        

        if(uname.equals("admin")  && pass2.equals("admin"))
        {
            arg[0]="Admin mode";
        }
        else
        {
           arg[0]="Normal mode";
        }
        
        a.main(arg);
        this.login_frame.setVisible(false);
//        throw new UnsupportedOperationException("Not supported yet.");

    }

}
