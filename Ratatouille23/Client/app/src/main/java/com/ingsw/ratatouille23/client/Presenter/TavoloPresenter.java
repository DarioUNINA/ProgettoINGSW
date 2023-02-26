package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.TavoloService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.TavoliFragment;

import java.util.List;


public class TavoloPresenter {

    private TavoloService service;
    private TavoliFragment tavoliFragment;
    public TavoloPresenter() {
        service = new TavoloService();
    }

    public TavoloPresenter(TavoliFragment tavoliFragment){
        service = new TavoloService();
        this.tavoliFragment = tavoliFragment;
    }

    public void getByRistorante(Ristorante ristorante){

        service.getByRistorante(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null){
                    //Inserire i tavoli nella recycler view
                }

            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");
            }
        }, ristorante);


    }

    public void getByCameriere(String username){
        service.getByCameriere(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null){
                    //Inserire i tavoli nella recycler view

                }

            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");
            }
        }, username);
    }


    public void getTavoli(){

        if(((HomeActivity)tavoliFragment.getActivity()).getUtente().getRuolo().equals(Ruolo.admin))
            getByRistorante(new Ristorante(((HomeActivity)tavoliFragment.getActivity()).getRistorante().getIdRistorante()));
        else
            getByCameriere(((HomeActivity)tavoliFragment.getActivity()).getUtente().getUsername());
    }



}
