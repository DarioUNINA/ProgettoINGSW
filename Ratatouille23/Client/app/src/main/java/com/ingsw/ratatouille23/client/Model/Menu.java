package com.ingsw.ratatouille23.client.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.List;

public class Menu implements Serializable {

    //Primary Key
    @Expose
    @SerializedName("idmenu")
    private int idMenu;

    //References
    @Expose
    @SerializedName("categorie")
    private List<Categoria> categorie;


    //Consructors

    public Menu(){}

    public Menu(int idMenu, List<Categoria> categorie) {
        this.idMenu = idMenu;
        this.categorie = categorie;
    }

    public Menu(int idMenu) {this.idMenu = idMenu;}
}
