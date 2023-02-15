package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;
import java.util.ArrayList;

public class AllergeneDTO {
    
    //Primary Key
    private String nome;
    private List<ElementoDTO> elementi;

    //Consytuctors
    public AllergeneDTO() {
    }

    public AllergeneDTO(String nome) {
        this.nome = nome;
    }

    public AllergeneDTO(String nome, List<ElementoDTO> elementi) {
        this.nome = nome;
        this.elementi = elementi;
    }

    //Getters and Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public List<String> getElementi() {
        List<String> elementi = new ArrayList<String>();

        for (ElementoDTO elemento : this.elementi) {
            elementi.add(elemento.getNome());
        }
        
        return elementi;
    }

    public void setElementi(List<ElementoDTO> elementi) {
        this.elementi = elementi;
    }
}
