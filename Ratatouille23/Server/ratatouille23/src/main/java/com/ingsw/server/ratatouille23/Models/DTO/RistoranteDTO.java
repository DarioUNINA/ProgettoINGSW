package com.ingsw.server.ratatouille23.Models.DTO;

    
public class RistoranteDTO {
    
    //Primary Key
    private int idRistorante;
    
    //Attributes
    private String nome;
    private String indirizzo;
    

    //References
    private Integer idMenu;


    //Constructors
    public RistoranteDTO() {
    }

    public RistoranteDTO(int idRistorante, String nome, String indirizzo, Integer idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.idMenu = idMenu;
    }


    //Getters and Setters
    public int getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(int idRistorante) {
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


}
