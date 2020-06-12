
package Clases;

public class Cargo {
    
    private String codCargo;
    private String tipoCargo;
    private float sueldo;
    
    public Cargo(String codigo, String tipo, float sueldo){
        codCargo = codigo;
        tipoCargo = tipo;
        this.sueldo = sueldo;
    }
    
    //Getters
    public String getCodCargo(){
        return codCargo;
    }
    public String getTipoCargo(){
        return tipoCargo;
    }
    public float getSueldo(){
        return sueldo;
    }
    
}
