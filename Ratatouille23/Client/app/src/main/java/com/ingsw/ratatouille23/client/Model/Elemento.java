package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Elemento implements Serializable {

    //Primary key
    @Expose
    @SerializedName("idElemento")
    private int idElemento;

    //References
    @Expose
    @SerializedName("idCategoria")
    private int idCategoria;

    @Expose
    @SerializedName("allergeni")
    List<String> allergeni;

    //Attributes

    @Expose
    @SerializedName("nome")
    private String nome;

    @Expose
    @SerializedName("prezzo")
    private float prezzo;

    //Constructors
    public Elemento(){}

    public Elemento(int idElemento, int idCategoria, List<String> allergeni, String nome, float prezzo) {
        this.idElemento = idElemento;
        this.idCategoria = idCategoria;
        this.allergeni = allergeni;
        this.nome = nome;
        this.prezzo = prezzo;
    }

    public int getIdElemento() {
        return idElemento;
    }

    public void setIdElemento(int idElemento) {
        this.idElemento = idElemento;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public List<String> getAllergeni() {
        return allergeni;
    }

    public void setAllergeni(List<String> allergeni) {
        this.allergeni = allergeni;
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
}
