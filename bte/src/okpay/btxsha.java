package okpay;
import java.security.MessageDigest;
import java.util.*;
 
public class btxsha 
{
    @SuppressWarnings("deprecation")
	public String shabtx()throws Exception
    {
    	String shour="";
    	String smonth="";
    	String sdate="";
     //Calendar calendar = new GregorianCalendar();
     //calendar.setTimeZone(TimeZone.getTimeZone("Etc/UTC"));
    	UTCTime utc=new UTCTime();
     Date date1 = new Date();
     TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
     System.out.println(date1);
     int year=utc.getYear();
     int month=utc.getCurrentTimeStamp().getMonth()+1;
     int day=utc.getDate();
     int hour=utc.getHour();

     if(hour<10)
     {
    shour="0";	 
     
     }
     if(month<10)
     {
    smonth="0";	 
     
     }
     if(day<10)
     {
    sdate="0";	 
     }
     shour+=""+hour;
     smonth+=""+month;
     sdate+=""+day;
     String spb = "Hq53Wsc2PQi6j7G8Fkd9ARa48"+":"+year+""+smonth+""+sdate+":"+shour;
     //System.out.println("time:"+sp);
     
     MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(spb.getBytes());
 
        byte byteData[] = md.digest();
 
        //convert the byte to hex format method 1
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }
        
       /* StringBuffer hexString = new StringBuffer();
        for (int i=0;i<byteData.length;i++) {
         String hex=Integer.toHexString(0xff & byteData[i]);
             if(hex.length()==1) hexString.append('0');
             hexString.append(hex);
        }*/
 
        return sb.toString();//+" and  "+spb+"    "+hexString.toString();
 
        //convert the byte to hex format method 2
      
    // System.out.println("Hex format : " + hexString.toString());*/
    }
}
