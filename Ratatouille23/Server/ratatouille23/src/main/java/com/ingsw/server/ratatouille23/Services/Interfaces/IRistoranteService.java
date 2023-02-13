package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import java.util.Optional;

public interface IRistoranteService {
    public Optional<Ristorante> getById(Integer id);
}
