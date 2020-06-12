
package Clases;

public class Ciudad {
    
    private String codCiudad;
    private String nombreCiudad;
    private String cine; //Este lo coloque, pero no se si es asi
    
    public Ciudad(String codigo, String nombre){
        codCiudad = codigo;
        nombreCiudad = nombre;
    }

    public void setCodCiudad(String codCiudad) {
        this.codCiudad = codCiudad;
    }

    public void setNombreCiudad(String nombreCiudad) {
        this.nombreCiudad = nombreCiudad;
    }
    
    //Getters
    public String getCodigo_ciudad(){return codCiudad;}
    public String getNombre_ciudad(){return nombreCiudad;}
    public String getCine(){return cine;}
    
}
