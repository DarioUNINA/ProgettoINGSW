package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;   
import java.util.Optional;

public interface CategoriaRepository extends CrudRepository<Categoria, Integer> {
    public Optional<Categoria> findById(Integer idCategoria);
}
