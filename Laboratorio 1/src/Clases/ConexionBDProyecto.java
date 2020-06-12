/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.*; //Libreria SQL
import java.sql.SQLException;
import java.util.logging.Logger;
import java.util.logging.Level;



/**
 *
 * @author usuario
 */
public class ConexionBDProyecto {
    
    Connection conexion=null;
    private final String user = "postgres";
    private final String password = "admin";
    private final String url = "jdbc:postgresql://localhost:5432/ProyectoLab";
    
    public Connection getConexion()
    {
        
        try{
            Class.forName("org.postgresql.Driver");
            conexion = (Connection) DriverManager.getConnection(this.url, this.user, this.password);
            
        } catch(SQLException e)
        {
            System.err.println(e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexionBDProyecto.class.getName()).log(Level.SEVERE, null, ex);
        }
      return conexion;  
    }
}
    
                
   
    
    
    

