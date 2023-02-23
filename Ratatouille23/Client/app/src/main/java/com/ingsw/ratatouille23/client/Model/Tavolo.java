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
    private int idRistorante;
    private List<Ordine> idOrdini;
    private Utente cameriere;

    //Constructors
    public Tavolo() {}

    public Tavolo(int idTavolo, int posti, boolean occupato, int idRistorante, List<Ordine> idOrdini, Utente cameriere) {
        this.idTavolo = idTavolo;
        this.posti = posti;
        this.occupato = occupato;
        this.idRistorante = idRistorante;
        this.idOrdini = idOrdini;
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

    public List<Ordine> getIdOrdini() {
        return idOrdini;
    }

    public void setIdOrdini(List<Ordine> idOrdini) {
        this.idOrdini = idOrdini;
    }

    public Utente getCameriere() {
        return cameriere;
    }

    public void setCameriere(Utente cameriere) {
        this.cameriere = cameriere;
    }
}
