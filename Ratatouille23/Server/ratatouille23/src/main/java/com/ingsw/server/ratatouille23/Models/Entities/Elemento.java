package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.annotations.OnDelete;

@Entity
@Table(name = "elemento")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idElemento")
public class Elemento {

    //Primary key
    @Id
    @Column(name = "id_Elemento")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idElemento;

    //References
    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonBackReference
    @JoinColumn(name = "id_categoria", referencedColumnName = "id_categoria")
    private Categoria categoria;

    //Constructors
    public Elemento() {
    }

    public Elemento(int idElemento, Categoria categoria) {
        this.idElemento = idElemento;
        this.categoria = categoria;
    }

    //Getters and Setters
    public int getIdElemento() {
        return idElemento;
    }

    public void setIdElemento(int idElemento) {
        this.idElemento = idElemento;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }


    
}
