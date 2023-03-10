package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import java.util.Optional;
import java.util.List;


public interface IOrdineService {
    public Optional<List<Ordine>> getByTavolo(Integer idTavolo);

    public void save(OrdineDTO ordineDTO);

    public Optional<Integer> getNewestByTavolo(Integer idTavolo);

    public void delete(OrdineDTO ordineDTO);

    public Optional<Integer> getOrdiniTotali(String cameriere, String dataFrom, String dataTo);

    public Optional<List<Integer>> getOrdiniTotaliPerGiorno(String cameriere, String dataFrom, String dataTo);

    public Optional<List<String>> getDate(String cameriere, String dataFrom, String dataTo);

    public Optional<Double> getIncasso(String cameriere, String dataFrom, String dataTo);


    
}
