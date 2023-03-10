package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.IOrdineService;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import java.util.Optional;
import java.util.ArrayList;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;

@RestController
@RequestMapping("/ordine")
public class OrdineController {

    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("OrdineService")
    private IOrdineService ordineService;

    @GetMapping("/get/{id}")
    public List<OrdineDTO> getById(@PathVariable("id") Integer id) {
        Optional<List<Ordine>> ordini = ordineService.getByTavolo(id);

        if (ordini.isPresent()){
            List<Ordine> ordiniList = ordini.get();
            List<OrdineDTO> ordiniDTO = new ArrayList<OrdineDTO>();
            
            for(Ordine ordine : ordiniList)
                ordiniDTO.add(modelMapper.map(ordine, OrdineDTO.class));

                return ordiniDTO;
            }
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");

    }

    @PostMapping("/save")
    public void save(@RequestBody OrdineDTO ordineDTO) {
        ordineService.save(ordineDTO);
    }


    @DeleteMapping("/delete")
    public void delete(@RequestBody OrdineDTO ordineDTO) {
        ordineService.delete(ordineDTO);
    }

    @GetMapping("/get-newest/tavolo/{id}")
    public Integer getIdNewestByTavolo(@PathVariable("id") Integer id) {
        Optional<Integer> ordine = ordineService.getNewestByTavolo(id);

        if (ordine.isPresent())
            return ordine.get();
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");
    }
    
    @GetMapping("/get-ordini-totali/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    public Integer getOrdiniTotali(@PathVariable("cameriere") String cameriere, @PathVariable("dataFrom") String dataFrom, @PathVariable("dataTo") String dataTo) {
        Optional<Integer> ordiniTotali = ordineService.getOrdiniTotali(cameriere, dataFrom, dataTo);
        if (ordiniTotali.isPresent())
            return ordiniTotali.get();
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");
    }

    @GetMapping("/get-ordini-totali-per-giorno/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    public List<Integer> getOrdiniTotaliPerGiorno(@PathVariable("cameriere") String cameriere, @PathVariable("dataFrom") String dataFrom, @PathVariable("dataTo") String dataTo) {
        Optional<List<Integer>> ordiniTotaliPerGiorno = ordineService.getOrdiniTotaliPerGiorno(cameriere, dataFrom, dataTo);

        if (ordiniTotaliPerGiorno.isPresent())
            return ordiniTotaliPerGiorno.get();
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");
    }

    @GetMapping("/get-date/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    public List<String> getDate(@PathVariable("cameriere") String cameriere, @PathVariable("dataFrom") String dataFrom, @PathVariable("dataTo") String dataTo) {
        Optional<List<String>> date = ordineService.getDate(cameriere, dataFrom, dataTo);

        if (date.isPresent())
            return date.get();
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");
    }

    @GetMapping("/get-incasso/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    public Double getIncasso(@PathVariable("cameriere") String cameriere, @PathVariable("dataFrom") String dataFrom, @PathVariable("dataTo") String dataTo) {
        Optional<Double> incasso = ordineService.getIncasso(cameriere, dataFrom, dataTo);

        if (incasso.isPresent())
            return incasso.get();
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");
    }



}
