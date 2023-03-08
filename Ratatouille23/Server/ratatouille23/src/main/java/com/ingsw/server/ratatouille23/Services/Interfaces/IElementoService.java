package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import java.util.List;

public interface IElementoService {
    public Optional<Elemento> getById(Integer id);   

    public Optional <List<Elemento>> getByCategoria(Integer idCategoria);

    public void save(ElementoDTO elementoDTO);

    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoAsc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByPrezzoDesc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByNomeAsc(Integer idCategoria);

    public Optional<List<Elemento>> getByCategoriaOrderByNomeDesc(Integer idCategoria);

    public Optional<List<Elemento>> getByNome(Integer id_ristorante, String nome);

    public Integer getQuantita(int idElemento, int idOrdine);

    public void delete(ElementoDTO elementoDTO);

    public void updateQuantita(int idOrdine, int idElemento, int quantita);

    public void deleteFromOrdinazione(int idOrdine, int idElemento);

    public Optional<Elemento> getByCategoriaAndNome(Categoria categoria, String nome);

    public void addToOrdinazione(int idOrdine, int idElemento);


    List<Elemento> getByCategoryIdOrderByPrice(Integer id);

}
