
package Clases;

public class Golosina {
    
    private String codGolosina;
    private String nombreGolosina;
    private float precioGolosina;
    
    public Golosina(String codigo, String nombre, float precio){
        codGolosina = codigo;
        nombreGolosina = nombre;
        precioGolosina = precio;
    }
    
    //Getters
    public String getCodGolosina(){
        return codGolosina;
    }
    public String getNombreGolosina(){
        return nombreGolosina;
    }
    public float getPrecioGolosina(){
        return precioGolosina;
    }
    
}
