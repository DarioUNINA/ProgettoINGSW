package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Allergene;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.modelmapper.ModelMapper;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Repositories.ElementoRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;

import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.Optional;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;

@Service("ElementoService")
@RequiredArgsConstructor
public class ElementoService implements IElementoService {
    
    @Autowired
    private ElementoRepository elementoRepository;

    @Autowired
    private final ModelMapper modelMapper;

    @Override
    public Optional<Elemento> getById(Integer id){
        return elementoRepository.findById(id);
    } 

    @Override
    public Optional<List<Elemento>> getByCategoria(Integer idCategoria) {
        return elementoRepository.findByCategoria(new Categoria(idCategoria));
    }

    @Override
    public void save(ElementoDTO elementoDTO){
        Elemento elemento = modelMapper.map(elementoDTO, Elemento.class);
        Categoria cat = new Categoria(elementoDTO.getIdCategoria());
        elemento.setCategoria(cat);
        ArrayList<Allergene> all = new ArrayList<Allergene>();
        for (String a: elementoDTO.getallergeni()) {
            all.add(new Allergene(a));
        }
        elemento.setAllergeni(all);
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

    @Override
    public Optional<List<Elemento>> getByNome(Integer id_ristorante, String nome){
        return elementoRepository.findByNome(id_ristorante, nome);
    }

    @Override
    public Integer getQuantita(int idElemento, int idOrdine){
        return elementoRepository.getQuantita(idElemento, idOrdine);
    }

    @Override
    public void delete(ElementoDTO elementoDTO) {
        Elemento e = modelMapper.map(elementoDTO, Elemento.class);
        Categoria cat = new Categoria(elementoDTO.getIdCategoria());
        e.setCategoria(cat);
        elementoRepository.delete(e);
    }

    @Override
    public void updateQuantita(int idOrdine, int idElemento, int quantita){
        elementoRepository.updateQuantita(idOrdine, idElemento, quantita);
    }

    @Override
    public void deleteFromOrdinazione(int idOrdine, int idElemento){
        elementoRepository.deleteFromOrdinazione(idOrdine, idElemento);
    }

    @Override
    public Optional<Elemento> getByCategoriaAndNome(Categoria categoria, String nome){
        return elementoRepository.findByCategoriaAndNome(categoria, nome);
    }

    @Override
    public void addToOrdinazione(int idOrdine, int idElemento){
        elementoRepository.addToOrdinazione(idOrdine, idElemento);
    }


    @Override
    public List<Elemento> getByCategoryIdOrderByPrice(Integer id){
        return elementoRepository.findByCategoryIdOrderByPrice(id);
    }


}
