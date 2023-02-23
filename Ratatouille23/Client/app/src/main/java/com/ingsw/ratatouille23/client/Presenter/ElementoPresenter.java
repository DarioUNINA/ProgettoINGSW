package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.Class.ElementoService;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Service.Callback;
public class ElementoPresenter {

    private ElementoService service;

    public ElementoPresenter(){
        service = new ElementoService();
    }
}
