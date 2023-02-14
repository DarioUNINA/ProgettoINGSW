package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Repositories.UtenteRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IUtenteService;
import java.util.Optional;

@Service("UtenteService")
public class UtenteService implements IUtenteService{

    @Autowired
    private UtenteRepository utenteRepository;

    @Override
    public Optional<Utente> getByUsernameAndPassword(String username, String password){
        return utenteRepository.findByUsernameAndPassword(username, password);
    } 
}
