
package Clases;

import java.util.Date;

public class Cliente {
    private String cedulaCliente;
    private String nombreCliente;
    private String apellidoCliente;
    private Date fechaNacimientoCliente;
    private int cantVisitas;
    
    public Cliente(String cedula, String nombre, String apellido, Date fecha, int visitas){
    cedulaCliente = cedula;
    nombreCliente = nombre;
    apellidoCliente = apellido;
    fechaNacimientoCliente = fecha;
    cantVisitas = visitas;
    }
    
    //Getters
    public String getCedulaCliente(){return cedulaCliente;}
    public String getNombreCliente(){return nombreCliente;}
    public String getApellidoCliente(){return apellidoCliente;}
    public Date getFechaNacimientoCliente(){return fechaNacimientoCliente;}
    public int getCantVisitas(){return cantVisitas;}
    
}
