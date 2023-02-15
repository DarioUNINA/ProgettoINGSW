package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Allergene;
import java.util.Optional;

public interface IAllergeneService {
    public Optional<Allergene> getByNome(String nome);
}
