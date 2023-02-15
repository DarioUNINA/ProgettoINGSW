package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;   
import java.util.Optional;


public interface TavoloRepository extends CrudRepository<Tavolo,Integer>{
    public Optional<Tavolo> findById(Integer idTavolo);
    
}
