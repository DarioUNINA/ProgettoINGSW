package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Repositories.UtenteRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IUtenteService;
import com.ingsw.server.ratatouille23.Models.DTO.UtenteDTO;
import lombok.RequiredArgsConstructor;

import java.util.Optional;
import java.util.List;
import org.modelmapper.ModelMapper;

@Service("UtenteService")
@RequiredArgsConstructor
public class UtenteService implements IUtenteService{

    @Autowired
    private final UtenteRepository utenteRepository;

    @Autowired
    private final ModelMapper modelMapper;
    

    @Override
    public Optional<Utente> getByUsernameAndPassword(String username, String password){
        return utenteRepository.findByUsernameAndPassword(username, password);
    } 

    @Override
    public Optional<List<Utente>> getByRistorante(Integer idRistorante){
        return utenteRepository.findByRistorante(new Ristorante(idRistorante));
    }

    @Override
    public void update(Utente utente){
        utenteRepository.save(utente);
    }

    @Override
    public void add(UtenteDTO utenteDTO){
        Utente utente = new Utente();
        utente = modelMapper.map(utenteDTO, Utente.class);
        utente.setRistorante(new Ristorante(utenteDTO.getRistorante()));
        utenteRepository.save(utente);
    }
}
