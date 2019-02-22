/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package newmath;

/**
 *
 * @author magic
 */
public class NewMath {
    public boolean check(int[] arry)
    {

        for(int q=0;q<=9;q++)
           {
           //out.println("<br>"+arry[z]);
                if(arry[q]==0)
                 {
                  return true;
                 }
           }

        return false;
    }

}
