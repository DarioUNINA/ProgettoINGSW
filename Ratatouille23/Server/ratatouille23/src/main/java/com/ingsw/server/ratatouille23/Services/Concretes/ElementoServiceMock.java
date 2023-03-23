package com.ingsw.server.ratatouille23.Services.Concretes;
import java.util.List;
import java.util.Optional;

import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;

import io.micrometer.core.annotation.TimedSet;

import com.ingsw.server.ratatouille23.Controllers.ElementoController;
import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import com.ingsw.server.ratatouille23.Models.DTO.UtenteDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Repositories.ElementoRepository;
import com.ingsw.server.ratatouille23.Repositories.CategoriaRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



public class UtenteControllerTest {

    private UtenteController utenteController;

    @BeforeAll
    public void setUp() {
        utenteController = new UtenteController();
        utenteController.setUtenteService(new UtenteServiceMock());
    }

    @Test
    public void testGetByUsernameAndPassword_withValidInputs_shouldReturnUtente() {
        String username = "Dario";
        String password = "password";

        UtenteDTO expected = new UtenteDTO("Dario", "password");
        UtenteDTO result = utenteController.getByUsernameAndPassword(username, password);

        if(expected.getUsername().equals(result.getUsername()) && expected.getPassword().equals(result.getPassword()))
            Assertions.assertTrue(true);
        else
            Assertions.fail();
    }

    @Test
    public void testGetByUsernameAndPassword_withInvalidUsername_shouldThrowIllegalArgumentException() {
        String username = "Dario";
        String password = "password";

        Assertions.assertThrows(IllegalArgumentException.class, () -> {
            utenteController.getByUsernameAndPassword(username, password);
        });
    }

    @Test
    public void testGetByUsernameAndPassword_withInvalidPassword_shouldThrowIllegalArgumentException() {
        String username = "Dario";
        String password = "password";

        Assertions.assertThrows(IllegalArgumentException.class, () -> {
            utenteController.getByUsernameAndPassword(username, password);
        });
    }

}

