package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import java.util.List;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "ordine")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idOrdine")
public class Ordine {
    
    //Primary Key
    @Id
    @Column(name = "id_ordine")
    @SequenceGenerator(name = "id_ordine_seq", sequenceName = "id_ordine_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_ordine_seq")
    private Integer idOrdine;

    //References
    @ManyToMany(mappedBy = "ordini", fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Elemento> elementi;

    @ManyToOne(fetch =  FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name="id_tavolo", referencedColumnName = "id_tavolo")
    @JsonManagedReference
    private Tavolo tavolo;


    //Constructors
    public Ordine() {
    }

    public Ordine(Integer idOrdine) {
        this.idOrdine = idOrdine;
    }

    public Ordine(Integer idOrdine, List<Elemento> elementi) {
        this.idOrdine = idOrdine;
        this.elementi = elementi;
    }

    public Ordine(Integer idOrdine, List<Elemento> elementi, Tavolo tavolo) {
        this.idOrdine = idOrdine;
        this.elementi = elementi;
        this.tavolo = tavolo;
    }

    //Getters and Setters

    public Integer getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(Integer idOrdine) {
        this.idOrdine = idOrdine;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(List<Elemento> elementi) {
        this.elementi = elementi;
    }

    public Tavolo getTavolo() {
        return tavolo;
    }

    public void setTavolo(Tavolo tavolo) {
        this.tavolo = tavolo;
    }




}
