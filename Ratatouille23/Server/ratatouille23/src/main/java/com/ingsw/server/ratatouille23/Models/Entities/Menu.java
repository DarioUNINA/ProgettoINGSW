package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idMenu")
@Table(name = "menu")
public class Menu {

    //Primary key
    @Id
    @Column(name = "id_menu")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idMenu;

    //References
    @OneToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "id_ristorante", referencedColumnName = "id_ristorante")
    private Ristorante ristorante;

    //Constructors
    public Menu() {
    }

    public Menu(int idMenu, Ristorante ristorante) {
        this.idMenu = idMenu;
        this.ristorante = ristorante;
    }

    //Getters and Setters
    public int getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(int idMenu) {
        this.idMenu = idMenu;
    }

    public Ristorante getRistorante() {
        return ristorante;
    }

    public void setRistorante(Ristorante ristorante) {
        this.ristorante = ristorante;
    }

    
}
