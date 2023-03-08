package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ingsw.server.ratatouille23.Models.Entities.Ordine;   
import java.util.Optional;
import java.util.List;
import org.springframework.data.repository.query.Param;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;

public interface OrdineRepository extends CrudRepository<Ordine, Integer> {
    Optional<List<Ordine>> findByTavolo(Tavolo tavolo);

    @Query(value = "select max(id_ordine) from ordine where id_tavolo = :idTavolo", nativeQuery = true)
    Optional<Integer> findNewestByTavolo(@Param(value="idTavolo")Integer idTavolo);
}
