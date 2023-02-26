package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;

public interface IElementoService {
    public Optional<Elemento> getById(Integer id);   

    public Optional <List<Elemento>> getByCategoria(Integer idCategoria);
}
