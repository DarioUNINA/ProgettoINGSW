package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Ordine implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idOrdine")
    private int idOrdine;

    //References
    @Expose
    @SerializedName("idTavolo")
    private int idTavolo;

    @Expose
    @SerializedName("elementi")
    private List<Elemento> elementi;

    @Expose
    @SerializedName("data")
    private String data;



    //Constructors
    public Ordine(){}

    public Ordine(int idOrdine, int idTavolo, List<Elemento> elementi, String data) {
        this.idOrdine = idOrdine;
        this.idTavolo = idTavolo;
        this.elementi = elementi;
        this.data = data;
    }


    //Getters and Setters


    public int getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(int idOrdine) {
        this.idOrdine = idOrdine;
    }

    public int getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(int idTavolo) {
        this.idTavolo = idTavolo;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
