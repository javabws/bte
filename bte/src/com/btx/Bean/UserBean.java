package com.btx.Bean;

import java.io.Serializable;
 
@SuppressWarnings("serial")
public class UserBean implements Serializable
{
  private String firstname;
  private String lastname;
  private String password;
  private String email;
  private int amount;
  private String link;
  
  
  public String getLink() {
	return link;
}

public void setLink(String link) {
	this.link = link;
}

public int getAmount() {
	return amount;
}

public void setAmount(int amount) {
	this.amount = amount;
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
