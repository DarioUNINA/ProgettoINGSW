package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import java.util.Optional;

public interface IElementoService {
    public Optional<Elemento> getById(Integer id);   
}
