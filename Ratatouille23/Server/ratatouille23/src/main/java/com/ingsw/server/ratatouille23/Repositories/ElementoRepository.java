package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;   
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;


public interface ElementoRepository extends CrudRepository<Elemento, Integer> {
    public Optional<Elemento> findById(Integer id);

    public Optional<List<Elemento>> findByCategoria(Categoria categoria);

}
