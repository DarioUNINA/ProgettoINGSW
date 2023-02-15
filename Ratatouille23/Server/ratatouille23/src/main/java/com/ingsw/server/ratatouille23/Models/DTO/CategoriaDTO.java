package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;

public class CategoriaDTO {

    //Primary Key
    private int idCategoria;
    
    //Attributes
    private String nome;

    //References
    private List<ElementoDTO> elementi;

    //Constructors
    public CategoriaDTO() {
    }

    public CategoriaDTO(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }

    public CategoriaDTO(int idCategoria, String nome, List<ElementoDTO> elementi) {
        this.idCategoria = idCategoria;
        this.nome = nome;
        this.elementi = elementi;
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

    public List<ElementoDTO> getElementi() {
        return elementi;
    }

    public void setElementi(List<ElementoDTO> elementi) {
        this.elementi = elementi;
    }

}
