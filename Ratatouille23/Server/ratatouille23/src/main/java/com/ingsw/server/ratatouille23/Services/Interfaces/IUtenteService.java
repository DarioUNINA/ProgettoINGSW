package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Models.DTO.UtenteDTO;
import java.util.Optional;
import java.util.List;

public interface IUtenteService {

    public Optional<Utente> getByUsernameAndPassword(String username, String password);

    public Optional<List<Utente>> getByRistorante(Integer idRistorante);

    public void update(Utente utente);

    public void add(UtenteDTO utenteDTO);
    
}
