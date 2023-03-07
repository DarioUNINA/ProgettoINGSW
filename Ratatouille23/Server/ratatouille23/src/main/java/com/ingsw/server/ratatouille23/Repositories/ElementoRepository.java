package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ingsw.server.ratatouille23.Models.Entities.Elemento;

import jakarta.transaction.Transactional;

import java.util.Optional;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
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

    @Query(value="SELECT * from elemento where id_categoria = " +
            "( Select id_categoria from categoria where id_menu =" +
            "(select id_menu from ristorante where id_ristorante = :id_ristorante)" +
            "and nome = :nome)", nativeQuery = true)
    public Optional<List<Elemento>> findByNome(@Param(value = "id_ristorante")int id_ristorante, @Param(value = "nome")String nome);

    @Query(value="select quantita from ordinazione where ( id_ordine = :idOrdine and id_elemento = :idElemento )", nativeQuery = true)
    public Integer getQuantita(@Param(value="idElemento")int idElemento, @Param(value="idOrdine")int idOrdine);

    @Modifying(clearAutomatically = true)
    @Transactional
    @Query(value = "update ordinazione set quantita= :quantita where (id_ordine =:idOrdine and id_elemento = :idElemento)", nativeQuery = true)
    public void updateQuantita(@Param(value="idOrdine")int idOrdine, @Param(value="idElemento")int idElemento, @Param(value="quantita")int quantita);

    @Modifying(clearAutomatically = true)
    @Transactional
    @Query(value = "delete from ordinazione where id_ordine =:idOrdine and id_elemento = :idElemento", nativeQuery = true)
    public void deleteFromOrdinazione(@Param(value="idOrdine")int idOrdine, @Param(value="idElemento")int idElemento);

    @Modifying(clearAutomatically = true)
    @Transactional
    @Query(value = "insert into ordinazione(id_ordine, id_elemento, quantita) values (:idOrdine, :idElemento, 1); ", nativeQuery = true)
    public void addToOrdinazione(@Param(value="idOrdine")int idOrdine, @Param(value="idElemento") int idElemento);

    public Optional<Elemento> findByCategoriaAndNome(Categoria categoria, String nome);

}
