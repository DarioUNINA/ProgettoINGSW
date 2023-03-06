package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.DTO.CategoriaDTO;
import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import java.util.Optional;
import java.util.List;

public interface IElementoService {
    public Optional<Elemento> getById(Integer id);   

    public Optional <List<Elemento>> getByCategoria(Integer idCategoria);

    public void save(Elemento elemento);

    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoAsc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoDesc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByNomeAsc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByNomeDesc(Integer idCategoria);

    public Optional<List<Elemento>> getByNome(Integer id_ristorante, String nome);

    public Integer getQuantita(int idElemento, int idOrdine);

    public void delete(ElementoDTO elementoDTO);
    
}
