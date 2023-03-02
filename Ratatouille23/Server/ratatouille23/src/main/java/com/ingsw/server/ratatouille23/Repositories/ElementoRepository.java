package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ingsw.server.ratatouille23.Models.Entities.Elemento;   
import java.util.Optional;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;


public interface ElementoRepository extends CrudRepository<Elemento, Integer> {
    public Optional<Elemento> findById(Integer id);

    public Optional<List<Elemento>> findByCategoria(Categoria categoria);

    @Query(value="SELECT * from elemento where id_categoria = :idCategoria ORDER BY prezzo ASC", nativeQuery = true)
    public Optional<List<Elemento>> findByCategoriaOrderByPrezzoAsc(@Param(value="idCategoria")int idCategoria);

    @Query(value="SELECT * from elemento where id_categoria = :idCategoria ORDER BY prezzo DESC", nativeQuery = true)
    public Optional<List<Elemento>> findByCategoriaOrderByPrezzoDesc(@Param(value="idCategoria")int idCategoria);

    @Query(value="SELECT * from elemento where id_categoria = :idCategoria ORDER BY nome ASC", nativeQuery = true)
    public Optional<List<Elemento>> findByCategoriaOrderByNomeAsc(@Param(value="idCategoria")int idCategoria);

    @Query(value="SELECT * from elemento where id_categoria = :idCategoria ORDER BY nome DESC", nativeQuery = true)
    public Optional<List<Elemento>> findByCategoriaOrderByNomeDesc(@Param(value="idCategoria")int idCategoria);

}
