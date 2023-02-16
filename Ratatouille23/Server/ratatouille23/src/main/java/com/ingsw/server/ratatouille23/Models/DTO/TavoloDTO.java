package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.ArrayList;

import java.util.List;

public class TavoloDTO {
    
    //Primary Key
    private Integer idTavolo;

    //Attributes
    private Integer posti;
    private boolean occupato;

    //References
    private Integer idRistorante;
    private List<OrdineDTO> idOrdini;
    private UtenteDTO cameriere;

    //Constructors
    public TavoloDTO() {
    }

    public TavoloDTO(int idTavolo, Integer posti, boolean occupato, Integer idRistorante, List<OrdineDTO> ordini, UtenteDTO cameriere) {
        this.idTavolo = idTavolo;
        this.posti = posti;
        this.occupato = occupato;
        this.idRistorante = idRistorante;
        this.idOrdini = ordini;
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

    public List<Integer> getIdOrdini() {
        List<Integer> ordini = new ArrayList<>();
        for(OrdineDTO o : this.idOrdini){
            ordini.add(o.getIdOrdine());
        }
        return ordini;
    }

    public void setIdOrdini(List<OrdineDTO> ordini) {
        this.idOrdini = ordini;
    }

    public String getCameriere() {
        return cameriere.getUsername();
    }

    public void setCameriere(UtenteDTO cameriere) {
        this.cameriere = cameriere;
    }


}
