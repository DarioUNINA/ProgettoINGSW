package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import java.util.Optional;

public interface ICategoriaService {
    public Optional<Categoria> getById(Integer idCategoria);
}
