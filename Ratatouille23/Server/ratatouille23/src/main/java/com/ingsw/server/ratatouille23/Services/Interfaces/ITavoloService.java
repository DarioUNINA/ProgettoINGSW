package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;

public interface ITavoloService {
    
    public Optional<Tavolo> getById(Integer idTavolo);

    public Optional<List<Tavolo>> getByRistorante(Ristorante ristorante);

    public Optional<List<Tavolo>> getByCameriere(Utente cameriere);

    public Optional<List<Tavolo>> getByCameriereOrLibero(String cameriere);

    
}
