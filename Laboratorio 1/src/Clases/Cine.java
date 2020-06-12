
package Clases;

public class Cine {
    
    private String codCine;
    private String direcCine;
    private String tlfCine;
    
    public Cine(String codigo, String direccion, String telefono){
        codCine = codigo;
        direcCine = direccion;
        tlfCine = telefono;
    }
    
    //Getters of codigo, direccion & telefono
    public String getCodigo_cine(){ return codCine;}
    public String getDireccion_cine(){ return direcCine;}
    public String getTelefono_cine(){ return tlfCine;}
    
    //Metodos CRUD Empleado
    public void incluir_empleado(){}
    public void consultar_empleado(){}
    public void modificar_empleado(){}
    public void eliminar_empleado(){}
    
    //Métodos CRUD Sala
    public void incluir_sala(){}
    public void consultar_sala(){}
    public void modificar_sala(){}
    public void eliminar_sala(){}
    
    //Métodos CRUD Horario
    public void incluir_horario(){}
    public void consultar_horario(){}
    public void modificar_horario(){}
    public void eliminar_horario(){}
    
    //Métodos CRUD Pelicula
    public void incluirPelicula(){}
    public void consultarPelicula(){}
    public void modificarPelicula(){}
    public void eliminarPelicula(){}
    
    //Métodos CRUD Función
    public void incluirFuncion(){}
    public void consultarFuncion(){}
    public void modificarFuncion(){}
    public void eliminarFuncion(){}
    
    //Métodos CRUD Golosina
    public void incluirGolosina(){}
    public void consultarGolosina(){}
    public void modificarGolosina(){}
    public void eliminarGolosina(){}
    
    //Métodos CRUD Entrada
    public void incluirEntrada(){}
    public void consultarEntrada(){}
    public void modificarEntrada(){}
    public void eliminarEntrada(){}
}
