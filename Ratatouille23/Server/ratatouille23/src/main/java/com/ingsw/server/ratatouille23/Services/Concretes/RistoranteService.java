package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.IRistoranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Repositories.RistoranteRepository;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;

@Service("RistoranteService")
public class RistoranteService implements IRistoranteService{
    
    @Autowired
    RistoranteRepository ristoranteRepository;

    @Override
    public Optional<Ristorante> getById(Integer id) {
        return ristoranteRepository.findById(id);
    }
}
