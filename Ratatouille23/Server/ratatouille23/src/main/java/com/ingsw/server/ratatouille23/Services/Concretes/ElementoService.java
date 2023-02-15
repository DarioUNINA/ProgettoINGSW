package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Repositories.ElementoRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;
import java.util.Optional;

@Service("ElementoService")
public class ElementoService implements IElementoService {
    
    @Autowired
    private ElementoRepository elementoRepository;

    @Override
    public Optional<Elemento> getById(Integer id){
        return elementoRepository.findById(id);
    } 
}
