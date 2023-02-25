package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;

import java.util.List;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;


public interface TavoloRepository extends CrudRepository<Tavolo,Integer>{
    
    public Optional<Tavolo> findById(Integer idTavolo);
    
    public Optional<List<Tavolo>> findByRistorante(Ristorante ristorante);

}


