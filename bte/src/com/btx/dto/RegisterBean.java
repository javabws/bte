package com.btx.dto;

public class RegisterBean
{
  private String firstname="";
  private String lastname="";
  private String password="";
  private String email="";
  private String r="";
  
  public String getR() {
	return r;
}

public void setR(String r) {
	this.r = r;
}

public String getFirstname()
  {
    return this.firstname;
  }
  
  public void setFirstname(String firstname)
  {
    this.firstname = firstname;
  }
  
  public String getLastname()
  {
    return this.lastname;
  }
  
  public void setLastname(String lastname)
  {
    this.lastname = lastname;
  }
  
  public String getPassword()
  {
    return this.password;
  }
  
  public void setPassword(String password)
  {
    this.password = password;
  }
  
  public String getEmail()
  {
    return this.email;
  }
  
  public void setEmail(String email)
  {
    this.email = email;
  }
}
