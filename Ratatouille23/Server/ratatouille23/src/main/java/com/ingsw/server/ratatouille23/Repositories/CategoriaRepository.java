package com.ingsw.server.ratatouille23.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;   
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoriaRepository extends CrudRepository<Categoria, Integer> {
    public Optional<Categoria> findById(Integer idCategoria);

    public Optional<List<Categoria>> findByMenu(Menu menu);

    public Optional<Categoria> findByMenuAndNome(Menu menu, String nome);

    @Query(value = "SELECT * FROM categoria WHERE id_menu = :id ORDER BY id_categoria", nativeQuery = true)
    List<Categoria> findCategoryByMenuIdOrderByAlimentAndPosition(@Param(value = "id") Integer id);

    
}
