package com.ingsw.server.ratatouille23.Models.DTO;

    
public class RistoranteDTO {
    
    //Primary Key
    private int idRistorante;
    
    //Attributes
    private String nome;
    private String indirizzo;
    private String telefono;
    

    //References
    private int idMenu;


    //Constructors
    public RistoranteDTO() {
    }

    public RistoranteDTO(int idRistorante, String nome, String indirizzo, int idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.idMenu = idMenu;
    }

    public RistoranteDTO(int idRistorante, String nome, String indirizzo, String telefono, int idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.telefono = telefono;
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

    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "RistoranteDTO [idRistorante=" + idRistorante + ", nome=" + nome + ", indirizzo=" + indirizzo
                + ", telefono=" + telefono + ", idMenu=" + idMenu + "]";
    }

    

}
