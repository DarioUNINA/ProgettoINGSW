package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;   
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;

public interface OrdineRepository extends CrudRepository<Ordine, Integer> {
    Optional<List<Ordine>> findByTavolo(Tavolo tavolo);

    
}
