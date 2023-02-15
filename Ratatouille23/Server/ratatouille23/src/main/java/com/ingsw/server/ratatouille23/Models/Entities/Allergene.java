package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "allergene")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "nome")
public class Allergene {
    
    //Primary key
    @Id
    @Column(name = "nome", nullable=false)
    private String nome;

    //References
    @ManyToMany(mappedBy = "allergeni", fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Elemento> elementi;

    //Constructors
    public Allergene() {
    }

    public Allergene(String nome) {
        this.nome = nome;
    }

    public Allergene(String nome, List<Elemento> elementi) {
        this.nome = nome;
        this.elementi = elementi;
    }

    //Getters and Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }

    
}
