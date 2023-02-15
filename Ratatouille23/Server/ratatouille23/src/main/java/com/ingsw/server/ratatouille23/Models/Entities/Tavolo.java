package com.ingsw.server.ratatouille23.Models.Entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import java.util.List;


@Entity
@Table(name = "tavolo")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idTavolo")
public class Tavolo {
    
    //Primary Key
    @Id
    @Column(name = "id_tavolo")
    private Integer idTavolo;

    //References
    @OneToMany(mappedBy = "tavolo", fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Ordine> ordini;

    //Constructors
    public Tavolo() {
    }

    public Tavolo(Integer idTavolo) {
        this.idTavolo = idTavolo;
    }

    public Tavolo(Integer idTavolo, List<Ordine> ordini) {
        this.idTavolo = idTavolo;
        this.ordini = ordini;
    }

    //Getters and Setters
    public Integer getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(Integer idTavolo) {
        this.idTavolo = idTavolo;
    }

    public List<Ordine> getOrdini() {
        return ordini;
    }

    public void setOrdini(List<Ordine> ordini) {
        this.ordini = ordini;
    }


}
