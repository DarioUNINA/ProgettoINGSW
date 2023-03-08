package com.ingsw.server.ratatouille23.Models.DTO;

import com.ingsw.server.ratatouille23.Utils.Ruolo;


public class UtenteDTO {

    //Primary key
    private String username;
    
    //Attributes
    private String password;
    private Ruolo ruolo;
    
    //References
    private Integer ristorante;


    //Constructors
    public UtenteDTO() {
    }

    public UtenteDTO(String username, String password, Ruolo ruolo, Integer ristorante) {
        this.username = username;
        this.password = password;
        this.ruolo = ruolo;
        this.ristorante = ristorante;
    }

    public UtenteDTO(String username){
        this.username = username;
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

    public Ruolo getRuolo() {
        return ruolo;
    }

    public void setRuolo(Ruolo ruolo) {
        this.ruolo = ruolo;
    }


    public Integer getRistorante() {
        return ristorante;
    }

    public void setRistorante(Integer ristorante) {
        this.ristorante = ristorante;
    }

    

}
