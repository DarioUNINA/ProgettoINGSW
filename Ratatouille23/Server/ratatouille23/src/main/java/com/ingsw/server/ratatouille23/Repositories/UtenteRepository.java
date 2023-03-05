package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;   
import com.ingsw.server.ratatouille23.Utils.Ruolo;
import java.util.Optional;


public interface UtenteRepository extends CrudRepository<Utente,String>{
    public Optional<Utente> findByUsernameAndPassword(String username, String password);

    public Optional<List<Utente>> findByRistorante(Ristorante ristorante);

    public Optional<List<Utente>> findByRistoranteAndRuolo(Ristorante ristorante, Ruolo ruolo);

    

    
}
