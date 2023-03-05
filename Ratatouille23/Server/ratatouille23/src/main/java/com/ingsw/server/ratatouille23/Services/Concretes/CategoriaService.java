package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;

import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ingsw.server.ratatouille23.Models.DTO.CategoriaDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Repositories.CategoriaRepository;
import java.util.Optional;
import java.util.List;
import org.modelmapper.ModelMapper;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;

@Service("CategoriaService")
@RequiredArgsConstructor
public class CategoriaService implements ICategoriaService {
    
    @Autowired
    private CategoriaRepository categoriaRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public Optional<Categoria> getById(Integer idCategoria) {
        return categoriaRepository.findById(idCategoria);
    }

    @Override
    public Optional<List<Categoria>> getByMenu(Integer idMenu) {
        return categoriaRepository.findByMenu(new Menu(idMenu));
    }

    @Override
    public void save(CategoriaDTO categoriaDTO) {
        Categoria categoria = modelMapper.map(categoriaDTO, Categoria.class);
        categoria.setIdCategoria(null);
        categoriaRepository.save(categoria);
    }

    @Override
    public void delete(CategoriaDTO categoriaDTO) {
        Categoria c = modelMapper.map(categoriaDTO, Categoria.class);
        Menu menu = new Menu(categoriaDTO.getIdMenu());
        c.setMenu(menu);
        categoriaRepository.delete(c);
    }

}
