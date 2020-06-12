package Clases;

public class Entrada {
    
    private String codEntrada;
    private float precioEntrada;
    private String tipoEntrada;
    private Funcion funcion;
    
    public Entrada(String codigo, float precio, String tipo){
        codEntrada = codigo;
        precioEntrada = precio;
        tipoEntrada = tipo;
    }
    
    //Getters
    public String getCodEntrada(){return codEntrada;}
    public float getPrecioEntrada(){return precioEntrada;}
    public String getTipoEntrada(){return tipoEntrada;}
    
    //Setter & Getter of Funcion
    public void setFuncion(Funcion funcion){
        this.funcion = funcion;
    }
    public Funcion getFuncion(){return funcion;}
    
    
}
