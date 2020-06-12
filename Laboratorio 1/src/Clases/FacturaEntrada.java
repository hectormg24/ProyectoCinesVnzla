
package Clases;

import java.util.Date;

public class FacturaEntrada {
    
    private String codFacturaEntrada;
    private int cantEntrada;
    private Date fechaFacturaEntrada;
    private Cliente cliente;
    private Entrada entrada;
    
    public FacturaEntrada(String codigo, int cantidad, Date fecha){
        codFacturaEntrada = codigo;
        cantEntrada = cantidad;
        fechaFacturaEntrada = fecha;
    }
    
    //Getters
    public String getCodFacturaEntrada(){return codFacturaEntrada;}
    public int getCantEntrada(){return cantEntrada;}
    public Date getFechaFacturaEntrada(){return fechaFacturaEntrada;}
    
    //Setter & Getter of Cliente
    public void setCliente(Cliente cliente){
        this.cliente = cliente;
    }
    public Cliente getCliente(){return cliente;}
    
    //Setter & Getter of Entrada
    public void setEntrada(Entrada entrada){
        this.entrada = entrada;
    }
    public Entrada getEntrada(){return entrada;}
    
    //Calcular monto factura
    public float calMontoFactura(int cantEntrada, Entrada precioEntrada){
        float monto = 0.00f;
        
        //Falta realizar el calculo matematico
        
        return monto;
    }
    
    //Emitir Factura Entrada
    public void emitirFacturaEntrada(Cliente cedulaCliente, Cliente nombreCliente, Cliente apellidoCliente, int cantEntrada, Pelicula Titulo, Sala nombreSala, Sala nroAsiento, Horario horaInicio, Horario horaFin){
    /*IMPORTANTE!!
    
    Falta llenar este metodo !!!!!!!!!!!!!!!!!!!!
    
    IMPORTANTE*/
    }
    
}
