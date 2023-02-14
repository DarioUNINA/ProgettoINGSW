package com.ingsw.server.ratatouille23.Services.Interfaces;

import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import java.util.Optional;

public interface IMenuService {
    public Optional<Menu> getById(int id);
}
