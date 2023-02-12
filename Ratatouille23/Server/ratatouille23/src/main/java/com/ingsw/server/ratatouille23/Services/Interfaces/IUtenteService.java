package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import java.util.Optional;

public interface IUtenteService {
    public Optional<Utente> getByUsernameAndPassword(String username, String password);
    
}
