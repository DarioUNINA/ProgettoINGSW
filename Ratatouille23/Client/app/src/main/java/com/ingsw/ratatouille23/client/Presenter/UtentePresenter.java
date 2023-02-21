package com.ingsw.ratatouille23.client.Presenter;

import android.content.Intent;
import android.os.Bundle;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.Class.UtenteService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;


public class UtentePresenter {

    private UtenteService service;
    private LogInActivity logInActivity;

    public UtentePresenter(LogInActivity logInActivity){
        this.logInActivity = logInActivity;
        service = new UtenteService();
    }


    public void login(){

        service.checkUser(new Callback(){
            @Override
            public void returnResult(Object o){
                if(o!=null) {
                   // Utente u = (Utente)o;
                   // logInActivity.getIntent().putExtra("utente", u);

                   // RistorantePresenter ristorantePresenter = new RistorantePresenter();
                    //ristorantePresenter.getByIdIntent(u.getIdRistorante() ,logInActivity.getIntent());


                   // logInActivity.startActivity(logInActivity.getIntent());
                }else
                    System.out.println("Login fallito\n");
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");

            }
        }, logInActivity.getUsernameEditText().getText().toString(), logInActivity.getPasswordEditText().getText().toString());

    }
}
