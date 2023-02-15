package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import java.util.Optional;

public interface ITavoloService {
    
    public Optional<Tavolo> getById(Integer idTavolo);
}
