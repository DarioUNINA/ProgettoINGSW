package com.ingsw.ratatouille23.client.Presenter;


import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.Class.UtenteService;
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
                    logInActivity.getIntent().putExtra("utente", (Utente)o);
                    RistorantePresenter ristorantePresenter = new RistorantePresenter(logInActivity);
                    ristorantePresenter.logIn(((Utente) o).getIdRistorante());
                }else
                    logInActivity.logInFailed();
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");

            }
        }, logInActivity.getUsernameEditText().getText().toString(), logInActivity.getPasswordEditText().getText().toString());

    }
}
