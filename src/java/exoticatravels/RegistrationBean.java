/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exoticatravels;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Espi
 */
public class RegistrationBean
        extends org.apache.struts.action.ActionForm {
    
  

     private String Username,Userid,Password,Reenterpassword,Address,State,Country;
    

    public RegistrationBean() 
    {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public String getUsername()
    {
        return Username;
    }
    
    public void setUsername(String Username)
    {
        this.Username = Username;
    }
    
    public String getUserid()
    {
        return Userid;
    }
    
    public void setUserid(String Userid)
    {
        this.Userid = Userid;
    }
    
    public String getPassword()
    {
        return Password;
    }
    
    public void setPassword(String Password)
    {
        this.Password = Password;
    }
    
    public String getReenterpassword()
    {
        return Reenterpassword;
    }
    
    public void setReenterpassword(String Reenterpassword)
    {
        this.Reenterpassword = Reenterpassword;
    }
    
    public String getAddress()
    {
        return Address;
    }
    
    public void getAddress(String Address)
    {
        this.Address = Address;
    }
    
    public String getState()
    {
        return State;
    }
    
    public void getState(String State)
    {
        this.State = State;
    }
    
    public String getCountry()
    {
        return Country;
    }
    
    public void getCountry(String Country)
    {
        this.Country = Country;
    }
}

