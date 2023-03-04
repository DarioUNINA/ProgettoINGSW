package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.AllergeneService;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;

public class AllergenePresenter {

    private AllergeneService service;
    private AddElementoMenuDialog addElementoMenuDialog;

    public AllergenePresenter(){
        service = new AllergeneService();
    }

    public AllergenePresenter(AddElementoMenuDialog addElementoMenuDialog){
        this.addElementoMenuDialog = addElementoMenuDialog;
        service = new AllergeneService();
    }
}
