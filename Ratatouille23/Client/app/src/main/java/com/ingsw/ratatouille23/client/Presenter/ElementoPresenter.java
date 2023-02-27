package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;


public class ElementoPresenter {

    private ElementoService service;
    private ElementiMenuFragment elementiMenuFragment;
    private ElementiGSFragment elementiGSFragment;

    public ElementoPresenter(){
        service = new ElementoService();
    }

    public ElementoPresenter(ElementiMenuFragment elementiMenuFragment){
        this.elementiMenuFragment = elementiMenuFragment;
        service = new ElementoService();
    }

    public ElementoPresenter(ElementiGSFragment elementiGSFragment){
        this.elementiGSFragment = elementiGSFragment;
        service = new ElementoService();
    }
}
