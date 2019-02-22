/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


/**
 *
 * @author ankur
 */
public class Registration {
    private String name;
    private String dob;
    private String gender;
    private String contactNo;
    private String address;
    private String username;
    private String password;
    
     private String security;
      private String college;
    private String email;
    private String city;
    private String district;
    private String occupation;
    private String state;
    private String type;
     //private int id;
    
    public Registration(String name,String dob,String gender,String address,String username,
            String password,String contactNo,String email,String occupation,String city,String district,String state,String college,String security)
   {
       this.name=name;
       this.dob=dob;
       this.gender=gender;
       this.address=address;
       this.username=username;
       this.password=password;
       this.contactNo=contactNo;
        this.email=email;
         this.occupation=occupation;
       this.city=city;
       this.district=district;
        this.state=state;
        //this.type=type;
        this.college=college;
         this.security=security;
     
      
      
       
    
    }
    
      public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name=name;
    }
     public String getCity()
    {
        return city;
    }
    public void setCity(String city)
    {
        this.city=city;
    }
     public String getDistrict()
    {
        return district;
    }
    public void setDistrict(String district)
    {
        this. district=district;
    }
     public String getState()
    {
        return state;
    }
    public void setState(String state)
    {
        this.state=state;
    }
     public String getAddress()
    {
        return address;
    }
    public void setAddress(String address)
    {
        this.address=address;
    }
     public String getContactNo()
    {
        return contactNo;
    }
    public void setContactNo(String contactNo)
    {
        this.contactNo=contactNo;
    }
     public String getDOB()
    {
        return dob;
    }
    public void setDOB(String dob)
    {
        this.dob=dob;    }
     public String getUserName()
    {
        return username;
    }
    public void setUserName(String username)
    {
        this.username=username;
    }
     public String getOccupation()
    {
        return occupation;
    }
    public void setOccupaton(String occupation)
    {
        this.occupation=occupation;
    }
     public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password=password;
    }
     public String getCollege()
    {
        return college;
    }
    public void setCollege(String college)
    {
        this.college=college;
    }
    
     public String getGender()
    {
        return gender ;
    }
    public void setGender(String gender)
    {
        this.gender=gender;
    }
     public String getEmail()
    {
        return email;
    }
    public void setEmail(String email)
    {
        this.email=email;
    }
     
     public String getSecurity()
    {
        return security;
    }
    public void setSecurity(String security)
    {
        this.security=security;
    }
      public String getType()
    {
        return type;
    }
    public void setType(String type)
    {
        this.type=type;
    }
    /*public int getId()
    {
        return id;
    }
    public void setId(int id)
    {
        this.id=id;
    }*/
   
    
   
  
}
    