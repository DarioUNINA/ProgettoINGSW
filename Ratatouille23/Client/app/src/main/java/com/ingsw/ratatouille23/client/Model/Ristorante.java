package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Ristorante implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idRistorante")
    private int idRistorante;

    //Attributes
    @Expose
    @SerializedName("nome")
    private String nome;

    @Expose
    @SerializedName("indirizzo")
    private String indirizzo;

    @Expose
    @SerializedName("telefono")
    private String telefono;


    //References

    @Expose
    @SerializedName("idMenu")
    private int idMenu;


    //Constructors
    public Ristorante(int idRistorante) {this.idRistorante = idRistorante;}

    public Ristorante() {}



    public Ristorante(int idRistorante, String nome, String indirizzo, String telefono, int idMenu) {
        this.idRistorante = idRistorante;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.telefono = telefono;
        this.idMenu = idMenu;
    }



    //Getters and Setters
    public int getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(int idRistorante) {
        this.idRistorante = idRistorante;
    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }
}
