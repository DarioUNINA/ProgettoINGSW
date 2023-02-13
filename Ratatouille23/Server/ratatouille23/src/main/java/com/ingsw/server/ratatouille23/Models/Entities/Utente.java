package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import jakarta.persistence.Table;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import com.ingsw.server.ratatouille23.Utils.Ruolo;
import java.io.Serializable;

@Entity
@Table(name = "utente")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "username")
public class Utente implements Serializable{

    
    //Primary key
    @Id
    @Column(name = "username", nullable=false, unique=true)
    private String username;

    //Attributes
    @Column(name = "password", nullable=false)
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(name = "ruolo", columnDefinition = "ENUM('admin', 'supervisore', 'cameriere','cuoco')", nullable=false)
    private Ruolo ruolo;


    @ManyToOne(fetch =  FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name="id_ristorante", referencedColumnName = "id_ristorante")
    @JsonIdentityReference(alwaysAsId = true)
    @JsonManagedReference
    private Ristorante ristorante;

    //Constructos
    public Utente() {
    }

    public Utente(String username, String password, Ristorante ristorante) {
        this.username = username;
        this.password = password;
        this.ristorante = ristorante;
    }
    
    public Utente(String username, String password, Ruolo ruolo, Ristorante ristorante) {
        this.username = username;
        this.password = password;
        this.ruolo = ruolo;
        this.ristorante = ristorante;
    }

    //Getters and Setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Ristorante getRistorante() {
        return ristorante;
    }

    public void setRistorante(Ristorante ristorante) {
        this.ristorante = ristorante;
    }
    
}
