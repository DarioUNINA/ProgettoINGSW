package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.Class.AllergeneService;
import com.ingsw.ratatouille23.client.Model.Allergene;
import com.ingsw.ratatouille23.client.Service.Callback;

public class AllergenePresenter {

    private AllergeneService service;

    public AllergenePresenter(){
        service = new AllergeneService();
    }
}
