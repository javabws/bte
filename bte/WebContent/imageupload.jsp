<%@page import="com.btx.Bean.UserBean"%>
<%@page import="com.btx.driver.DbDriver"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%
UserBean u=(UserBean)session.getAttribute("userBean");
String rtempfile = File.createTempFile("temp","1").getParent(); 

// get the file from the previous page form           
// save the file in temporary directory of server
// specify the max size = 15MB
MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

Enumeration files = multi.getFileNames();

String st="update user_details set id_proof=? where email=?";

// get the connection object from another class MyConnection's method getConnection();
// and create the prepareStatement
PreparedStatement psmt=DbDriver.getConnection().prepareStatement(st);

         
String name="",msg="";
String fileExtesion="";
File ff =null;
FileInputStream fin =null;

while (files.hasMoreElements())
{
   name=(String)files.nextElement();                                        
   ff = multi.getFile(name);
   fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));
   
   // check user has select the correct file or not
   boolean fileAllowed = fileExtesion.equalsIgnoreCase(".jpg");
   
   if((ff!=null)&&fileAllowed)
   {
     
     try
     {
       fin=new FileInputStream(ff);
      // psmt.setString(1, ff.getName());
     //  psmt.setString(2, fileExtesion);
       psmt.setBinaryStream(1,(InputStream)fin, (int)(ff.length()));
       psmt.setString(2, u.getEmail());
     //  psmt.setString(4, "Logged User name or ID");        // pass the user name or id 
       boolean sss = psmt.execute();
       
       msg="Uploaded successfully..";
       %>
       <jsp:forward page="userwithdrawal">
       <jsp:param value="msg" name="Uploaded successfully.."/>
        <jsp:param value="1" name="n"/>
       </jsp:forward>
       <%
       
     }
     
     catch(Exception e)
     {
       msg="Upload Failed. Sorry something went wrong";
       %>
       <jsp:forward page="userwithdrawal">
       <jsp:param value="msg" name="Upload Failed. Sorry something went wrong"/>
        <jsp:param value="1" name="n"/>
       </jsp:forward>
       <%
     }
     
     finally
     {
      // next statement is must otherwise file will not be deleted from the temp as fin using f.
      // its necessary to put outside otherwise at the time of exception file will not be closed.
           fin.close();
           ff.delete();
     }
   }
   else
   {
	   msg="Please select the correct file...";
	   %>
       <jsp:forward page="userwithdrawal">
       <jsp:param value="msg" name="Please select the correct file..."/>
       <jsp:param value="1" name="n"/>
       </jsp:forward>
       <%
   }// end of if and else
}// end of while

%>