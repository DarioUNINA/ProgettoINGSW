package com.ingsw.server.ratatouille23.Models.DTO;

    
public class RistoranteDTO {
    
    //Primary Key
    private int idRistorante;
    
    //Attributes
    private String nome;
    private String indirizzo;
    

    //References
    private MenuDTO menu;


    //Constructors
    public RistoranteDTO() {
    }

    public RistoranteDTO(int idRistorante, String nome, String indirizzo, MenuDTO menu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.menu = menu;
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

    public MenuDTO getMenu() {
        return menu;
    }

    public void setMenu(MenuDTO menu) {
        this.menu = menu;
    }


}
