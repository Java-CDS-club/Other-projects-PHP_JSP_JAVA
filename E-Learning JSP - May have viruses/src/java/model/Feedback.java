/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ankur
 */
public class Feedback {
    
    private String name;
    private String email;
    private String feedback;
    private String approve;
    
    public Feedback(String name,String email,String feedback,String approve)
    {
        this.email=email;
        this.name=name;
        this.feedback=feedback;
        this.approve=approve;
    }
    public String getName()
    {
        return name;
        
    }
    public void setName(String name)
    {
        this.name=name;
    }
        public String getEmail()
    {
        return email;
        
    }
    public void setEmail(String email)
    {
        this.email=email;
    }
    
    public String getApprove()
    {
        return approve;
        
    }
    public void setApprove(String approve)
    {
        this.approve=approve;
    }
     public String getFeedback()
    {
        return feedback;
        
    }
    public void setFeedback(String feedback)
    {
        this.feedback=feedback;
    }
   
    
    
   
    
    
}

