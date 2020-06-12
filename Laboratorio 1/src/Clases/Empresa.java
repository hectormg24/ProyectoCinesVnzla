
package Clases;

public class Empresa {
    
    private String codEmp;
    private String nombreEmpresa;
    private String direccionEmpresa;
    private String correoEmpresa;
    private String tlfEmpresa;
    private String cine; //Este lo coloque, pero no se si es asi
    
    public Empresa(String codigo, String nombre, String direccion, String correo, String telefono){
    codEmp = codigo;
    nombreEmpresa = nombre;
    direccionEmpresa = direccion;
    correoEmpresa = correo;
    tlfEmpresa = telefono;
    }
    
    //Getters
    public String getCodigo_sala(){return codEmp;}
    public String getNombre_sala(){return nombreEmpresa;}
    public String getDireccion_sala(){return direccionEmpresa;}
    public String getCorreo_sala(){return correoEmpresa;}
    public String getTelefono_sala(){return tlfEmpresa;}
    
    //Metodo CRUD Cine
    public void incluirCine(){}
    public void consultarCine(){}
    public void modificarCine(){}
    public void eliminarCine(){}
    
    //Métodos CRUD Ciudad
    public void incluirCiudad(){}
    public void consultarCiudad(){}
    public void modificarCiudad(){}
    public void eliminarCiudad(){}
    
    //Métodos CRUD Cargo
    public void incluirCargo(){}
    public void consultarCargo(){}
    public void modificarCargo(){}
    public void eliminarCargo(){}
}
