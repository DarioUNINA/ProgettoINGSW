package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;
import java.util.ArrayList;

public class AllergeneDTO {

    //Primary Key
    private String nome;



    //Consytuctors
    public AllergeneDTO() {
    }

    public AllergeneDTO(String nome) {
        this.nome = nome;
    }
    

    //Getters and Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}
