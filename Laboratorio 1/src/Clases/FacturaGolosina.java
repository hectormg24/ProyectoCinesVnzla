
package Clases;

import java.util.Date;

public class FacturaGolosina {
    private String codFacturaGolosina;
    private int cantGolosina;
    private Date fechaFacturaGolosina;
    private Golosina golosina;
    private Cliente cliente;
    
    public FacturaGolosina(String codigo, int cant, Date fecha){
        codFacturaGolosina = codigo;
        cantGolosina = cant;
        fechaFacturaGolosina = fecha;
    }
    
    //Getters
    public String getCodFacturaGolosina(){
        return codFacturaGolosina;
    }
    public int getCantGolosina(){
        return cantGolosina;
    }
    public Date getFechaFacturaGolosina(){
        return fechaFacturaGolosina;
    }
    
    //Setter & Getter of Golosina
    public void setGolosina(Golosina golosina){
        this.golosina = golosina;
    }
    public Golosina getGolosina(){
        return golosina;
    }
    
    //Setter & Getter of Cliente
    public void setCliente(Cliente cliente){
        this.cliente = cliente;
    }
    public Cliente getCliente(){
        return cliente;
    }
    
}
