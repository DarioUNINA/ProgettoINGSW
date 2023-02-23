package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Categoria implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idCategoria")
    private int idCategoria;

    //References
    @Expose
    @SerializedName("elementi")
    private List<Elemento> elementi;

    //Attributes
    @Expose
    @SerializedName("nome")
    private String nome;


    //Constructors
    public Categoria(){}

    public Categoria(int idCategoria, List<Elemento> elementi, String nome) {
        this.idCategoria = idCategoria;
        this.elementi = elementi;
        this.nome = nome;
    }

    //Getters and Setters

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


}
