package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;   
import java.util.Optional;


@Repository
public interface UtenteRepository extends CrudRepository<Utente,String>{

    public Optional<Utente> findByIdAndPassword(String username, String password);
    
}
