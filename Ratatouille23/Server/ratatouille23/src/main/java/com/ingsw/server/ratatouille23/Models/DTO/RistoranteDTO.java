package com.ingsw.server.ratatouille23.Models.DTO;

    
public class RistoranteDTO {
    
    //Primary Key
    private Integer idRistorante;
    
    //Attributes
    private String nome;
    private String indirizzo;
    private String telefono;
    

    //References
    private Integer idMenu;


    //Constructors
    public RistoranteDTO() {
    }

    public RistoranteDTO(Integer idRistorante, String nome, String indirizzo, Integer idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.idMenu = idMenu;
    }

    public RistoranteDTO(Integer idRistorante, String nome, String indirizzo, String telefono, Integer idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.telefono = telefono;
        this.idMenu = idMenu;
    }


    //Getters and Setters
    public Integer getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(Integer idRistorante) {
        this.idRistorante = idRistorante;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public Integer getidMenu() {
        return idMenu;
    }

    public void setidMenu(Integer idMenu) {
        this.idMenu = idMenu;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    

}
