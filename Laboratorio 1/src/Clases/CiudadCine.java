
package Clases;

public class CiudadCine {
    
    private String codCiudad;
    private String codCine;
    private int cantCine;
    
    public CiudadCine(String codCiudad, String codCine, int cantCine){
        this.codCiudad = codCiudad;
        this.codCine = codCine;
        this.cantCine = cantCine;
    }
    
    //Getters
    public String getCodCiudad(){
        return codCiudad;
    }
    public String getCodCine(){
        return codCine;
    }
    public int getCantCine(){
        return cantCine;
    }
    
}
