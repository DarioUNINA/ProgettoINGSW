package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.AllergeneService;

public class AllergenePresenter {

    private AllergeneService service;

    public AllergenePresenter(){
        service = new AllergeneService();
    }
}
