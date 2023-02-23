package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.ElementoService;

public class ElementoPresenter {

    private ElementoService service;

    public ElementoPresenter(){
        service = new ElementoService();
    }
}
