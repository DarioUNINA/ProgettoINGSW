package com.ingsw.server.ratatouille23.Models.Entities;

import jakarta.persistence.*;
import java.util.List;
import com.fasterxml.jackson.annotation.*;


@Entity
@Table(name = "ristorante")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idRistorante")
public class Ristorante{

    //Primary key
    @Id
    @Column(name = "id_ristorante")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idRistorante;

    //Attributes
    @Column(name = "nome")
    private String nome;

    @Column(name = "indirizzo")
    private String indirizzo;

    @Column(name = "telefono")
    private String telefono;

    //References
    @OneToMany(mappedBy = "ristorante", fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Utente> utenti;

    @OneToOne(mappedBy = "ristorante", fetch = FetchType.EAGER)
    @JsonBackReference
    private Menu menu;
    

    //Constructors
    public Ristorante() {
    }

    public Ristorante(Integer idRistorante, List<Utente> utenti, Menu menu, String nome, String indirizzo, String telefono) {
        this.idRistorante = idRistorante;
        this.utenti = utenti;
        this.menu = menu;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.telefono = telefono;
    }

    public Ristorante(Integer idRistorante, List<Utente> utenti, String nome, String indirizzo, String telefono) {
        this.idRistorante = idRistorante;
        this.utenti = utenti;
        this.nome = nome;
        this.indirizzo = indirizzo;
        this.telefono = telefono;
    }


    //Getters and Setters
    public Integer getIdRistorante() {
        return idRistorante;
    }

    public void setId_ristorante(Integer idRistorante) {
        this.idRistorante = idRistorante;
    }

    public List<Utente> getUtenti() {
        return utenti;
    }

    public void setUtenti(List<Utente> utenti) {
        this.utenti = utenti;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }


}
