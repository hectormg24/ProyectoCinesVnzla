
package Clases;

import java.util.Date;

public class Funcion {
    private String codFuncion;
    private Date fecha;
    private Sala sala;
    private Pelicula pelicula;
    private Horario horario;
    
    public Funcion(String codigo, Date fecha){
    codFuncion = codigo;
    this.fecha = fecha;
    }
    
    //Getter of codigo & fecha
    public String getCodigo_Funcion(){return codFuncion;}
    public Date getFecha_funcion(){return fecha;}
    
    //Setter & Getter of Sala
     public void setSala(Sala sala){
        this.sala = sala;
    }
    public Sala getSala(){return sala;}
    
    //Setter & Getter of Pelicula
    public void setPelicula(Pelicula pelicula){
        this.pelicula = pelicula;
    }
    public Pelicula getPelicula(){return pelicula;}
    
    //Setter & Getter of Horario
    public void setHorario(Horario horario){
        this.horario = horario;
    }
    public Horario getHorario(){return horario;}
    
    //Metodos CRUD
    public void incluir_funcion(){}
    public void consultar_funcion(){}
    public void modificar_funcion(){}
    public void eliminar_funcion(){}
    
}
