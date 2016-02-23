package com.btx.Bean;

public class AdminBean
{
  private String usernme;
  private String password;
  private String name;
  private String type;
  
  public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

public String getUsernme()
  {
    return this.usernme;
  }
  
  public void setUsernme(String usernme)
  {
    this.usernme = usernme;
  }
  
  public String getPassword()
  {
    return this.password;
  }
  
  public void setPassword(String password)
  {
    this.password = password;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setName(String name)
  {
    this.name = name;
  }
}
