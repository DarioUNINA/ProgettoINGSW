package com.ingsw.server.ratatouille23.Repositories;

import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import org.springframework.data.repository.CrudRepository;
import java.util.Optional;

public interface RistoranteRepository extends CrudRepository<Ristorante, Integer>{
    public Optional<Ristorante> findById(Integer id);
}
