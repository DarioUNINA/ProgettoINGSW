package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.RistoranteService;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;
import com.ingsw.ratatouille23.client.View.Activity.SettingsActivity;

public class RistorantePresenter {

    private RistoranteService service;

    private LogInActivity logInActivity;

    public RistorantePresenter(){
        service = new RistoranteService();
    }

    public RistorantePresenter(LogInActivity logInActivity){
        service = new RistoranteService();
        this.logInActivity = logInActivity;
    }

    public void logIn(int idRistorante){
        service.getById(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null) {
                    logInActivity.getIntent().putExtra("ristorante", (Ristorante)o);
                    logInActivity.startActivity(logInActivity.getIntent());
                }else
                    System.out.println("Nessun ristorante trovato con l'id "+idRistorante);
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");
            }

        }, idRistorante);
    }
}
