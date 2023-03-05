package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoriaDTO {

    //Primary Key
    private int idCategoria;
    
    //Attributes
    private String nome;

    //References
    private List<ElementoDTO> elementi;

    private int idMenu;

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


}
