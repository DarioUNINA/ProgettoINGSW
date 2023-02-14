package com.ingsw.server.ratatouille23.Repositories;

import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import org.springframework.data.repository.CrudRepository;
import java.util.Optional;

public interface MenuRepository extends CrudRepository<Menu, Integer> {
    public Optional<Menu> findById(int idMenu);
}
