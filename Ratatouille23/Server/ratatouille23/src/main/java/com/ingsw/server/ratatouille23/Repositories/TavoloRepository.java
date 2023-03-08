package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;


public interface TavoloRepository extends CrudRepository<Tavolo,Integer>{
    
    public Optional<Tavolo> findById(Integer idTavolo);
    
    public Optional<List<Tavolo>> findByRistorante(Ristorante ristorante);

    public Optional<List<Tavolo>> findByCameriere(Utente cameriere);

    @Query(value="SELECT * FROM tavolo t WHERE (t.username_cameriere = :cameriere OR t.occupato = false) order by id_tavolo", nativeQuery = true)
    public Optional<List<Tavolo>> findByCameriereOrLibero(@Param(value="cameriere")String cameriere);



}


