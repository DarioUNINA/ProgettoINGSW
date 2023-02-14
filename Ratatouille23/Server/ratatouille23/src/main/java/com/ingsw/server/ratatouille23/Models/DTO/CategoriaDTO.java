package com.ingsw.server.ratatouille23.Models.DTO;

public class CategoriaDTO {

    //Primary Key
    private int idCategoria;
    
    //Attributes
    private String nome;

    //Constructors
    public CategoriaDTO() {
    }

    public CategoriaDTO(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }


    //Getters and Setters
    
    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}
