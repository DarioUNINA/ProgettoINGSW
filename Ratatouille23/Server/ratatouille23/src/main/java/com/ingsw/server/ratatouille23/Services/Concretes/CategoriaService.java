package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Repositories.CategoriaRepository;
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;

@Service("CategoriaService")
public class CategoriaService implements ICategoriaService {
    
    @Autowired
    private CategoriaRepository categoriaRepository;

    @Override
    public Optional<Categoria> getById(Integer idCategoria) {
        return categoriaRepository.findById(idCategoria);
    }

    @Override
    public Optional<List<Categoria>> getByMenu(Integer idMenu) {
        return categoriaRepository.findByMenu(new Menu(idMenu));
    }

    @Override
    public void save(Categoria categoria) {
        categoriaRepository.save(categoria);
    }
}
