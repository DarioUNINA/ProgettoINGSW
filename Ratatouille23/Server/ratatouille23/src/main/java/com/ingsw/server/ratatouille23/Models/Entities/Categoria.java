package com.ingsw.server.ratatouille23.Models.Entities;


import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import java.util.List;


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

    @OneToMany(mappedBy = "categoria", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Elemento> elementi;

    
    //Constructors
    public Categoria() {
    }

    public Categoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public Categoria(int idCategoria, String nome) {
        this.idCategoria = idCategoria;
        this.nome = nome;
    }

    public Categoria(int idCategoria, String nome, Menu menu, List<Elemento> elementi) {
        this.idCategoria = idCategoria;
        this.nome = nome;
        this.menu = menu;
        this.elementi = elementi;
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

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }


}
