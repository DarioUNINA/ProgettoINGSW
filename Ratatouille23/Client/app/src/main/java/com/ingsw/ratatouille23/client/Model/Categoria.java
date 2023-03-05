package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Categoria implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idCategoria")
    private Integer idCategoria;

    //References
    @Expose
    @SerializedName("elementi")
    private List<Elemento> elementi;

    //Attributes
    @Expose
    @SerializedName("nome")
    private String nome;

    @Expose
    @SerializedName("idMenu")
    private Integer idMenu;


    //Constructors
    public Categoria(){}

    public Categoria(Integer idCategoria, List<Elemento> elementi, String nome) {
        this.idCategoria = idCategoria;
        this.elementi = elementi;
        this.nome = nome;
    }

    public Categoria(Integer idMenu, String nome){
        this.idMenu = idMenu;
        this.nome = nome;
    }

    //Getters and Setters

    public Integer getIdCategoria() {
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

    public Integer getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(Integer idMenu) {
        this.idMenu = idMenu;
    }
}
