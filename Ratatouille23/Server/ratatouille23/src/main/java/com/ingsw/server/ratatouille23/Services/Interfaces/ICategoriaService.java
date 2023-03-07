package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Models.DTO.CategoriaDTO;
import java.util.List;
import java.util.Optional;

public interface ICategoriaService {
    public Optional<Categoria> getById(Integer idCategoria);

    public Optional<List<Categoria>> getByMenu(Integer idMenu);

    public void save(CategoriaDTO categoriaDTO);

    public void delete(CategoriaDTO categoriaDTO);

    public Optional<Categoria> getByMenuAndNome(Integer idMenu, String nome);
    
}
