package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.IRistoranteService;

import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Repositories.RistoranteRepository;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import org.modelmapper.ModelMapper;
import com.ingsw.server.ratatouille23.Models.DTO.RistoranteDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;

@Service("RistoranteService")
@RequiredArgsConstructor
public class RistoranteService implements IRistoranteService{
    
    @Autowired
    private final RistoranteRepository ristoranteRepository;

    @Autowired
    private final ModelMapper modelMapper;

    @Override
    public Optional<Ristorante> getById(Integer id) {
        return ristoranteRepository.findById(id);
    }

    @Override
    public void update(RistoranteDTO ristoranteDTO) {
        Ristorante ristorante = modelMapper.map(ristoranteDTO, Ristorante.class);
        ristorante.setMenu(new Menu(ristoranteDTO.getIdMenu(), new Ristorante(ristoranteDTO.getIdRistorante())));
        ristoranteRepository.save(ristorante);

    }
    
}
