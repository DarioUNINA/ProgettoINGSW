package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;

public class TavoloDTO {
    
    //Primary Key
    private Integer idTavolo;

    //Attributes
    private Integer posti;
    private boolean occupato;

    //References
    private Integer idRistorante;
    private List<OrdineDTO> ordini;
    private UtenteDTO cameriere;

    //Constructors
    public TavoloDTO() {
    }

    public TavoloDTO(int idTavolo, Integer posti, boolean occupato, Integer idRistorante, List<OrdineDTO> ordini, UtenteDTO cameriere) {
        this.idTavolo = idTavolo;
        this.posti = posti;
        this.occupato = occupato;
        this.idRistorante = idRistorante;
        this.ordini = ordini;
        this.cameriere = cameriere;
    }


    //Getters and Setters
    public Integer getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(int idTavolo) {
        this.idTavolo = idTavolo;
    }

    public Integer getPosti() {
        return posti;
    }

    public void setPosti(Integer posti) {
        this.posti = posti;
    }

    public boolean isOccupato() {
        return occupato;
    }

    public void setOccupato(boolean occupato) {
        this.occupato = occupato;
    }

    public Integer getIdRistorante() {
        return idRistorante;
    }

    public void setIdRistorante(Integer idRistorante) {
        this.idRistorante = idRistorante;
    }

    public List<OrdineDTO> getOrdini() {
        return ordini;
    }

    public void setordini(List<OrdineDTO> ordini) {
        this.ordini = ordini;
    }

    public String getCameriere() {
        if(cameriere!=null)
            return cameriere.getUsername();
        else
            return null;
    }

    public void setCameriere(UtenteDTO cameriere) {
        this.cameriere = cameriere;
    }


}
