package com.ingsw.ratatouille23.client.Model;

import androidx.core.app.RemoteInput;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Allergene implements Serializable {

    //Private Key
    @Expose
    @SerializedName("nome")
    private String nome;

    //References
    @Expose
    @SerializedName("elementi")
    private List<Elemento> elementi;


    //Constructors
    public Allergene(){}

    public Allergene(String nome, List<Elemento> elementi) {
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

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }


}
