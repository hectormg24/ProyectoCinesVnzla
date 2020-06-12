
package Clases;

import java.sql.Time;

public class Pelicula {
    private String codPelicula;
    private String titulo;
    private String genero; // Vi mejor colocar "Genero" en vez de "Tipo"
    private char clasificacion;
    private String idioma;
    private float duracion;
    private String director;
    
    public Pelicula(String codigo, String titulo, String genero, char clasificacion, String idioma, float duracion, String direcctor){
        codPelicula = codigo;
        this.titulo = titulo;
        this.genero = genero;
        this.clasificacion = clasificacion;
        this.idioma = idioma;
        this.duracion = duracion;
        this.director = direcctor;
    }
    
    //Getters
    public String getCodPelicula(){return codPelicula;}
    public String getTitulo(){return titulo;}
    public String getGenero(){return genero;}
    public char getClasificacion(){return clasificacion;}
    public String getIdioma(){return idioma;}
    public float getDuracion(){return duracion;}
    public String getDirector(){return director;}
    
    
    
    
}
