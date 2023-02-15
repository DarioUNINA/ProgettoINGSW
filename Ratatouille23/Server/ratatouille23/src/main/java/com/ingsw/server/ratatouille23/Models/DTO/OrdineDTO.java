package com.ingsw.server.ratatouille23.Models.DTO;

public class OrdineDTO {
    
    //Primary Key
    private Integer idOrdine;

    //References
    private Integer idTavolo;

    //Constructors
    public OrdineDTO() {
    }

    public OrdineDTO(Integer idOrdine) {
        this.idOrdine = idOrdine;
    }

    public OrdineDTO(Integer idOrdine, Integer idTavolo) {
        this.idOrdine = idOrdine;
        this.idTavolo = idTavolo;
    }

    //Getters and Setters
    public Integer getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(Integer idOrdine) {
        this.idOrdine = idOrdine;
    }

    public Integer getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(Integer idTavolo) {
        this.idTavolo = idTavolo;
    }


}
