
package com.btx.Process;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import com.btx.Bean.UserBean;

public class ByteArrayConvert {

	 //converting Object object to byte[].
    public static byte[] getByteArrayObject(Object obj){
    
        byte[] byteArrayObject = null;
        try {
            
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject(obj);
            
            oos.close();
            bos.close();
            byteArrayObject = bos.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
            return byteArrayObject;
        }
        return byteArrayObject;
    }
    //converting byte[] to object  
    public static UserBean getJavaObject(byte[] convertObject){
    	UserBean objSimpleExample = null;
            
            ByteArrayInputStream bais;
            ObjectInputStream ins;
            try {
            
            bais = new ByteArrayInputStream(convertObject);
            
            ins = new ObjectInputStream(bais);
             objSimpleExample =(UserBean)ins.readObject();
            
            ins.close();

            }
            catch (Exception e) {
            e.printStackTrace();
            }
            return objSimpleExample;
    }
    
    //converting Inputstraem to Object
    @SuppressWarnings("unused")
	public static Object getObject(InputStream is) throws IOException, ClassNotFoundException {
		
    	    ObjectInputStream ois = new ObjectInputStream(is);
    	    Object x = ois.readObject(); 
    	    return ois;
	}

}
