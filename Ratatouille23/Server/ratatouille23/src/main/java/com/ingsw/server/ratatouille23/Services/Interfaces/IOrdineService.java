package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import java.util.Optional;
import java.util.List;


public interface IOrdineService {
    public Optional<List<Ordine>> getByTavolo(Integer idTavolo);

    public void save(OrdineDTO ordineDTO);


    public void delete(OrdineDTO ordineDTO);
    
}
