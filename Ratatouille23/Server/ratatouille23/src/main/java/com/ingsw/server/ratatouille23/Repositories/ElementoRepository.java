package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;   
import java.util.Optional;

public interface ElementoRepository extends CrudRepository<Elemento, Integer> {
    public Optional<Elemento> findById(Integer id);
}
