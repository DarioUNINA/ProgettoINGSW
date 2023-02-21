package com.ingsw.ratatouille23.client.Presenter;

import android.content.Intent;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.Class.RistoranteService;

public class RistorantePresenter {

    private RistoranteService service;

    public RistorantePresenter(){
        service = new RistoranteService();
    }

    public void getByIdIntent(int idRistorante, Intent intent){
        service.getById(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null) {
                    Ristorante ristorante = (Ristorante)o;
                    intent.putExtra("ristorante", ristorante);
                }
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");
            }
        }, idRistorante);
    }
}
