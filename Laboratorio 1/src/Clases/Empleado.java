
package Clases;

import java.util.Date;

public class Empleado {
    
    private String cedulaEmp;
    private String nombreEmpleado;
    private String apellidoEmpleado;
    private Date fechaNacimientoE;
    private String correoEmpleado;
    private String direccionEmpleado;
    private String tlfEmpleado;
    
    public Empleado(String cedula, String nombre, String apellido, Date fecha, String correo, String direccion, String telefono){
    cedulaEmp = cedula;
    nombreEmpleado = nombre;
    apellidoEmpleado = apellido;
    fechaNacimientoE = fecha;
    correoEmpleado = correo;
    direccionEmpleado = direccion;
    tlfEmpleado = telefono;
    }
    
    //Getters
    public String getCedula_empleado(){ return cedulaEmp;}
    public String getNombre_empleado(){ return nombreEmpleado;}
    public String getApellido_empleado(){ return apellidoEmpleado;}
    public Date getFecha_nacimiento_empleado(){ return fechaNacimientoE;}
    public String getCorreo_empleado(){ return correoEmpleado;}
    public String getDireccion_empleado(){ return direccionEmpleado;}
    public String getTelefono_empleado(){ return tlfEmpleado;}
    
    //Calcular edad de empleado
    public int getEdadEmpleado(Date fecha_nac){
        int edad = 0;
        //COMPLETAR METODO!!!!!!!!!!!!!!!!!!!!!!!
        return edad;}
    
    //Metodos del CRUD
    
    public void reporte_ventas_empleado(){}
    
}
