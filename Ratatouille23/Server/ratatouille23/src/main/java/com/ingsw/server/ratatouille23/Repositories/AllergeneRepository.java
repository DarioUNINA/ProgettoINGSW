package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Allergene;   
import java.util.Optional;
import java.util.List;

public interface AllergeneRepository extends CrudRepository<Allergene, String> {
    public Optional<Allergene> findByNome(String nome);

    public List<Allergene> findAll();
}