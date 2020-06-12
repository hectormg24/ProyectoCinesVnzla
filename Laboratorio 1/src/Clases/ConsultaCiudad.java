package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class ConsultaCiudad extends ConexionBDProyecto {
    
    public boolean registrar(Ciudad ci)
    {
        
        PreparedStatement ps= null;
        Connection con= getConexion();
        
        String sql="INSERT INTO Ciudad (codCiudad, nomCiudad, estatus) VALUES (?,?,A)";
        
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, ci.getCodigo_ciudad());
            ps.setString(2, ci.getNombre_ciudad());
            ps.execute();
            return true;
            
            }catch (SQLException e)
                {
                    System.err.println(e);
                    return false;
                }finally {
                    try{
                        con.close();
                    
                    }
                    catch (SQLException e){
                        System.err.println(e);
                    }
        }
        
    }
    
    
    public boolean Modificar(Ciudad ci)
    {
        
        PreparedStatement ps= null;
        Connection con= getConexion();
        
        String sql="UPDATE Ciudad SET nomCiudad=? estatus=? WHERE codCiudad=?";
        
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, ci.getNombre_ciudad());
            ps.setString(2, ci.getCodigo_ciudad());
            ps.execute();
            return true;
            
            }catch (SQLException e)
                {
                    System.err.println(e);
                    return false;
                }finally {
                    try{
                        con.close();
                    
                    }
                    catch (SQLException e){
                        System.err.println(e);
                    }
        }
        
    }
    
    
    public boolean Eliminar(Ciudad ci)
    {
        
        PreparedStatement ps= null;
        Connection con= getConexion();
        
        String sql="DELETE FROM Ciudad WHERE codCiudad=?";
        
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, ci.getCodigo_ciudad());
            ps.execute();
            return true;
            
            }catch (SQLException e)
                {
                    System.err.println(e);
                    return false;
                }finally {
                    try{
                        con.close();
                    
                    }
                    catch (SQLException e){
                        System.err.println(e);
                    }
        }
        
    }
    
    public boolean Buscar(Ciudad ci)
    {
        
        PreparedStatement ps= null;
        ResultSet rs=null;
        Connection con= getConexion();
        
        String sql="SELECT * FROM Ciudad WHERE codCiudad=?";
        
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, ci.getCodigo_ciudad());
            rs= ps.executeQuery();
            
            if (rs.next()){
                ci.setCodCiudad(rs.getString("codCiudad"));
                ci.setNombreCiudad(rs.getString("nomCiudad"));
                return true;
            }
            
            
            return false;
            
            }catch (SQLException e)
                {
                    System.err.println(e);
                    return false;
                }finally {
                    try{
                        con.close();
                    
                    }
                    catch (SQLException e){
                        System.err.println(e);
                    }
        }
        
    }
    
    
    

    
    
}
