package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.ingsw.server.ratatouille23.Models.Entities.Ordine;   
import java.util.Optional;
import java.util.List;
import org.springframework.data.repository.query.Param;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import java.sql.Date;

public interface OrdineRepository extends CrudRepository<Ordine, Integer> {
    Optional<List<Ordine>> findByTavolo(Tavolo tavolo);

    @Query(value = "select max(id_ordine) from ordine where id_tavolo = :idTavolo", nativeQuery = true)
    Optional<Integer> findNewestByTavolo(@Param(value="idTavolo")Integer idTavolo);

    @Query(value = "select count(id_ordine) from ordine o join tavolo t on t.id_tavolo = o.id_tavolo where (username_cameriere = :cameriere and data > :dataFrom and data < :dataTo )", nativeQuery = true)
    Optional<Integer> findOrdiniTotali(@Param(value="cameriere")String cameriere, @Param(value="dataFrom")Date dataFrom, @Param(value="dataTo")Date dataTo);

    @Query(value= "select count (*) from ordine o join tavolo t on t.id_tavolo = o.id_tavolo where (username_cameriere = :cameriere and data > :dataFrom and data < :dataTo) group by data", nativeQuery = true)
    Optional<List<Integer>> findOrdiniTotaliPerGiorno(@Param(value="cameriere")String cameriere, @Param(value="dataFrom")Date dataFrom, @Param(value="dataTo")Date dataTo);

    @Query(value="select data from ordine o join tavolo t on t.id_tavolo = o.id_tavolo where (username_cameriere = :cameriere and data > :dataFrom and data < :dataTo)", nativeQuery = true)
    Optional<List<String>> findDate(@Param(value="cameriere")String cameriere, @Param(value="dataFrom")Date dataFrom, @Param(value="dataTo")Date dataTo);

    @Query(value="select sum(quantita*prezzo) from ((ordine o join tavolo t on t.id_tavolo = o.id_tavolo) join ordinazione ord on ord.id_ordine = o.id_ordine) join elemento e on e.id_elemento = ord.id_elemento where (username_cameriere = :cameriere and data > :dataFrom and data < :dataTo)", nativeQuery = true)
    Optional<Double> findIncasso(@Param(value="cameriere")String cameriere, @Param(value="dataFrom")Date dataFrom, @Param(value="dataTo")Date dataTo);
}
