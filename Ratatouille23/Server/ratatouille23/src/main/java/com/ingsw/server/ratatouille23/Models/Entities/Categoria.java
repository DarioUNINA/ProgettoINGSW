package com.ingsw.server.ratatouille23.Models.Entities;


import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;


@Entity
@Table(name = "categoria")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idCategoria")
public class Categoria {

    //Primary key
    @Id
    @Column(name = "id_categoria", nullable=false, unique=true)
    private int idCategoria;

    //Attributes
    @Column(name = "nome", nullable=false)
    private String nome;

    //References
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "id_menu", referencedColumnName = "id_menu")
    private Menu menu;

    //Constructors
    public Categoria() {
    }

    public Categoria(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }


    //Getters and Setters

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    
}
