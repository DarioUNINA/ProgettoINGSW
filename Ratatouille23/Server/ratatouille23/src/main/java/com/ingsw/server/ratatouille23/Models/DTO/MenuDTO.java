package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;

public class MenuDTO {
    
   //Primary Key
    private int idMenu;
    
    //References
    private List<CategoriaDTO> categorie;


    //Constructors

    public MenuDTO() {
    }

    public MenuDTO(int idMenu, List<CategoriaDTO> categorie) {
        this.idMenu = idMenu;
        this.categorie = categorie;
    }

    //Getters and Setters

    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }

    public List<CategoriaDTO> getCategorie() {
        return categorie;
    }

    public void setCategorie(List<CategoriaDTO> categorie) {
        this.categorie = categorie;
    }

}
