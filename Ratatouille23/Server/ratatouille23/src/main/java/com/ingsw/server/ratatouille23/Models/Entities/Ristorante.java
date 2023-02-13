package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonBackReference;


@Entity
@Table(name = "ristorante")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idRistorante", scope = Ristorante.class)
public class Ristorante implements Serializable{

    //Primary key
    @Id
    @Column(name = "id_ristorante")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idRistorante;

    @OneToMany(mappedBy = "ristorante", fetch = FetchType.EAGER)
    @JsonBackReference
    private List<Utente> utenti;
    

    //Constructors
    public Ristorante() {
    }

    public Ristorante(Integer idRistorante) {
        this.idRistorante = idRistorante;
    }

    //Getters and Setters
    public Integer getIdRistorante() {
        return idRistorante;
    }

    public void setId_ristorante(Integer idRistorante) {
        this.idRistorante = idRistorante;
    }
    
}
