
package Clases;

import java.sql.Time;

public class Horario {
    private String codHorario;
    private Time horaInicio;
    private Time horaFin;
    
    public Horario(String codigo, Time inicio, Time fin){
        codHorario = codigo;
        horaInicio = inicio;
        horaFin = fin;
    }
    
    //Getters
    public String getCodHorario(){return codHorario;}
    public Time getHoraInicio(){return horaInicio;}
    public Time getHoraFin(){return horaFin;}
    
}
