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

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "id_ristorante", referencedColumnName = "id_ristorante")
    private Ristorante ristorante;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "username_cameriere", referencedColumnName = "username")
    private String cameriere;


    //Attributes
    @Column(name = "posti")
    private Integer posti;

    @Column(name = "occupato")
    private Boolean occupato;

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

    public Tavolo(Integer idTavolo, List<Ordine> ordini, Ristorante ristorante, String cameriere, Integer posti, Boolean occupato) {
        this.idTavolo = idTavolo;
        this.ordini = ordini;
        this.ristorante = ristorante;
        this.cameriere = cameriere;
        this.posti = posti;
        this.occupato = occupato;
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

    public Ristorante getRistorante() {
        return ristorante;
    }

    public void setRistorante(Ristorante ristorante) {
        this.ristorante = ristorante;
    }

    public String getCameriere() {
        return cameriere;
    }

    public void setCameriere(String cameriere) {
        this.cameriere = cameriere;
    }

    public Integer getPosti() {
        return posti;
    }

    public void setPosti(Integer posti) {
        this.posti = posti;
    }

    public Boolean getOccupato() {
        return occupato;
    }

    public void setOccupato(Boolean occupato) {
        this.occupato = occupato;
    }

    
}
