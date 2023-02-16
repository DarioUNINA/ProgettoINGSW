package com.ingsw.server.ratatouille23.Models.DTO;

import java.util.List;

public class OrdineDTO {
    
    //Primary Key
    private Integer idOrdine;

    //References
    private Integer idTavolo;
    private List<ElementoDTO> elementi;


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

    public OrdineDTO(Integer idOrdine, Integer idTavolo, List<ElementoDTO> elementi) {
        this.idOrdine = idOrdine;
        this.idTavolo = idTavolo;
        this.elementi = elementi;
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

    public List<ElementoDTO> getElementi() {
        return elementi;
    }

    public void setElementi(List<ElementoDTO> elementi) {
        this.elementi = elementi;
    }

}
