package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Utente implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("username")
    private String username;

    @Expose
    @SerializedName("password")
    private String password;

    @Expose
    @SerializedName("ristorante")
    private int idRistorante;

    @Expose
    @SerializedName("ruolo")
    private Ruolo ruolo;


    //Constructors
    public Utente() {}

    public Utente(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Utente(String username, String password, int idRistorante, Ruolo ruolo) {
        this.username = username;
        this.password = password;
        this.idRistorante = idRistorante;
        this.ruolo = ruolo;
    }


    //Getters and Setters

    public Ruolo getRuolo() {
        return ruolo;
    }

    public void setRuolo(Ruolo ruolo) {
        this.ruolo = ruolo;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(int idRistorante) {
        this.idRistorante = idRistorante;
    }

}
