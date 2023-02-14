package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Repositories.CategoriaRepository;
import java.util.Optional;

@Service("CategoriaService")
public class CategoriaService implements ICategoriaService {
    
    @Autowired
    private CategoriaRepository categoriaRepository;

    @Override
    public Optional<Categoria> getById(Integer idCategoria) {
        return categoriaRepository.findById(idCategoria);
    }
}
