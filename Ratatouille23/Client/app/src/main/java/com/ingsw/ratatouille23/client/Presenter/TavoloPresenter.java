package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.TavoloService;
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

    public void getByIdRistorante(int idRistorante){

    }

    public void getByCameriere(String username){
        service.getByCameriere(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null){
                    //Inserire i tavoli nella recycler view
                    System.out.println("E ANDATO\n\n\n\n\n\n");
                    for(Tavolo t:(List<Tavolo>)o)
                        System.out.println(t.getIdTavolo());
                }else
                    System.out.println("NON E ANDATO\n\n\n\n\n\n");

            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");
            }
        }, username);
    }



}
