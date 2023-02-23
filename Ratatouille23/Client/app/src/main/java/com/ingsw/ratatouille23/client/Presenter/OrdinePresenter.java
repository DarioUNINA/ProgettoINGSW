package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.Class.OrdineService;

public class OrdinePresenter {
    private OrdineService service;

    public OrdinePresenter(){
        service = new OrdineService();
    }
}
