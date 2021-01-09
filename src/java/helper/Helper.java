
package helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;


public class Helper {
    
    
    public static boolean deleteFile(String path){
        boolean f=false;
        
        try{
            
            File file=new File(path);
            f=file.delete();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        return f;
    }
    public static boolean saveFile(InputStream is,String path){
        boolean f=false;
        
        try{
            byte b[]=new byte[is.available()];
            is.read(b);
            
            FileOutputStream fos=new FileOutputStream(path);
            fos.write(b);
          
            fos.flush();
            fos.close();
            f=true;
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        
        return f;
    }
    
     public static boolean saveFile_1(InputStream is,String path1){
        boolean f=false;
        
        try{
            byte b[]=new byte[is.available()];
            is.read(b);
            
            
            FileOutputStream fos=new FileOutputStream(path1);
            fos.write(b);
          
            fos.flush();
            fos.close();
            f=true;
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        
        return f;
    }
     
      public static boolean saveFile_2(InputStream is,String path2){
        boolean f=false;
        
        try{
            byte b[]=new byte[is.available()];
            is.read(b);
            
            FileOutputStream fos=new FileOutputStream(path2);
            fos.write(b);
          
            fos.flush();
            fos.close();
            f=true;
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        
        return f;
    }
    
}
