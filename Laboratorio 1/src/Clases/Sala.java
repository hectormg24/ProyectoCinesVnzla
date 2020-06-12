
package Clases;

public class Sala {
    
    private String codigoSala;
    private String nombreSala;
    private int nroAsiento;
    
    public Sala(String codigo, String nombre, int asientos){
        codigoSala = codigo;
        nombreSala = nombre;
        nroAsiento = asientos;
    }
    
    //Getters
    public String getCodigo_sala(){ return codigoSala;}
    public String getNombre_sala(){ return nombreSala;}
    public int getNro_Asientos(){ return nroAsiento;}
    
    //Metodos CRUD
    
    
}
