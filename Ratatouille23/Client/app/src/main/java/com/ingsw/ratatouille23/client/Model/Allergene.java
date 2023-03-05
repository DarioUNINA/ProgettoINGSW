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




    //Constructors
    public Allergene(){}

    public Allergene(String nome ) {
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
