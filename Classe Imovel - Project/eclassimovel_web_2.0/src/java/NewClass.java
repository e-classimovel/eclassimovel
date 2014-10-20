
import com.mchange.io.FileUtils;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.persistence.Convert;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Gilmar
 */
public class NewClass {
    public static void main(String[] args) {
        String a = "fasfdaf";
        byte[] teste = a.getBytes();
        
        String imagem = new String(teste).replace(' ', '+');
    }
}
