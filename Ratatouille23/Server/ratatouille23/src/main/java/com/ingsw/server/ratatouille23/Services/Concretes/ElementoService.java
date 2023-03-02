package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Repositories.ElementoRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;

@Service("ElementoService")
public class ElementoService implements IElementoService {
    
    @Autowired
    private ElementoRepository elementoRepository;

    @Override
    public Optional<Elemento> getById(Integer id){
        return elementoRepository.findById(id);
    } 

    @Override
    public Optional<List<Elemento>> getByCategoria(Integer idCategoria) {
        return elementoRepository.findByCategoria(new Categoria(idCategoria));
    }

    @Override
    public void save(Elemento elemento){
        elementoRepository.save(elemento);
    }

    @Override
    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoAsc(Integer idCategoria) {
        return elementoRepository.findByCategoriaOrderByPrezzoAsc(idCategoria);
    }

    @Override
    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoDesc(Integer idCategoria) {
        return elementoRepository.findByCategoriaOrderByPrezzoDesc(idCategoria);
    }

    @Override
    public Optional<List<Elemento>> getByCategoriaOrderByNomeAsc(Integer idCategoria) {
        return elementoRepository.findByCategoriaOrderByNomeAsc(idCategoria);
    }

    @Override
    public Optional<List<Elemento>> getByCategoriaOrderByNomeDesc(Integer idCategoria) {
        return elementoRepository.findByCategoriaOrderByNomeDesc(idCategoria);
    }
}
