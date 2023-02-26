package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Tavolo implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idTavolo")
    private int idTavolo;


    //Attributes
    @Expose
    @SerializedName("posti")
    private int posti;

    @Expose
    @SerializedName("occupato")
    private boolean occupato;

    //References

    @Expose
    @SerializedName("idRistorante")
    private int idRistorante;

    @Expose
    @SerializedName("ordini")

    private List<Ordine> ordini;

    @Expose
    @SerializedName("cameriere")
    private String cameriere;


    //Constructors

    public Tavolo() {}

    public Tavolo(int idTavolo, int posti, boolean occupato, int idRistorante, List<Ordine> ordini, String cameriere) {
        this.idTavolo = idTavolo;
        this.posti = posti;
        this.occupato = occupato;
        this.idRistorante = idRistorante;
        this.ordini = ordini;
        this.cameriere = cameriere;
    }

    public Tavolo(int idTavolo, int posti, boolean occupato, int idRistorante) {
        this.idTavolo = idTavolo;
        this.posti = posti;
        this.occupato = occupato;
        this.idRistorante = idRistorante;
    }

    //Getters and Setters


    public int getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(int idTavolo) {
        this.idTavolo = idTavolo;
    }

    public int getPosti() {
        return posti;
    }

    public void setPosti(int posti) {
        this.posti = posti;
    }

    public boolean isOccupato() {
        return occupato;
    }

    public void setOccupato(boolean occupato) {
        this.occupato = occupato;
    }

    public int getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(int idRistorante) {
        this.idRistorante = idRistorante;
    }

    public List<Ordine> getOrdini() {
        return ordini;
    }

    public void setOrdini(List<Ordine> ordini) {
        this.ordini = ordini;
    }

    public String getCameriere() {
        return cameriere;
    }

    public void setCameriere(String cameriere) {
        this.cameriere = cameriere;
    }
}
