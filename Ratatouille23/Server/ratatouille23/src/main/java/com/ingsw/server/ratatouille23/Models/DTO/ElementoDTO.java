package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.ArrayList;
import java.util.List;

public class ElementoDTO {
    
    //Primary Key
    private Integer idElemento;

    //References
    private Integer idCategoria;
    private List<AllergeneDTO> allergeni;

    //Attributes
    private String nome;
    private float prezzo;


    //Constructors
    public ElementoDTO() {
    }

    public ElementoDTO(Integer idElemento) {
        this.idElemento = idElemento;
    }

    public ElementoDTO(Integer idElemento, Integer idCategoria, String nome, float prezzo) {
        this.idElemento = idElemento;
        this.idCategoria = idCategoria;
        this.nome = nome;
        this.prezzo = prezzo;
    }

    public ElementoDTO(Integer idElemento, Integer idCategoria, String nome, float prezzo, List<AllergeneDTO> allergeni) {
        this.idElemento = idElemento;
        this.idCategoria = idCategoria;
        this.nome = nome;
        this.prezzo = prezzo;
        this.allergeni = allergeni;
    }

    //Getters and Setters
    public Integer getIdElemento() {
        return idElemento;
    }

    public void setIdElemento(Integer idElemento) {
        this.idElemento = idElemento;
    }

    public Integer getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Integer idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public List<String> getallergeni() {

        List<String> allergeni = new ArrayList<String>();

        for (AllergeneDTO allergene : this.allergeni) {
            allergeni.add(allergene.getNome());
        }
        return allergeni;
    }

    public void setallergeni(List<AllergeneDTO> allergeni) {
        this.allergeni = allergeni;
    }

}
