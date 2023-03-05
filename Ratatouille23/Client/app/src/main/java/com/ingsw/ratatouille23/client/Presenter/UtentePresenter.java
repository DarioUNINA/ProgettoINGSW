package com.ingsw.ratatouille23.client.Presenter;


import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.UtenteService;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;
import com.ingsw.ratatouille23.client.View.Adapter.PersonaleAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.PersonaleFragment;
import com.ingsw.ratatouille23.client.View.Fragment.Setting.SettingUtenteFragment;

import java.util.ArrayList;
import java.util.List;


public class UtentePresenter {

    private UtenteService service;
    private LogInActivity logInActivity;

    private  SettingUtenteFragment settingUtenteFragment;
    private PersonaleFragment personaleFragment;

    public UtentePresenter(LogInActivity logInActivity){
        this.logInActivity = logInActivity;
        service = new UtenteService();
    }

    public UtentePresenter() {

    }

    public UtentePresenter(SettingUtenteFragment settingUtenteFragment){
        service = new UtenteService();
        this.settingUtenteFragment = settingUtenteFragment;
    }

    public UtentePresenter(PersonaleFragment personaleFragment){
        this.personaleFragment = personaleFragment;
        service = new UtenteService();
    }


    public void login(){
        service.getByUsernamePassword(new Callback(){
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

    public void getByRistorante(int idRistorante){
        service.getByIdRistorante(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null){
                    personaleFragment.setPersonaleAdapter(new PersonaleAdapter((ArrayList<Utente>) o, personaleFragment.getContext(), personaleFragment.getOnPersonaleClickListner(), personaleFragment, false));
//                    personaleFragment.getPersonaleAdapter().setUtenti((ArrayList<Utente>) o, false);
                }

            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("errore");
                e.getMessage();

            }
        }, idRistorante);
    }

    public void getByRuolo(int idRistorante, String ruolo){
        service.getByRuolo(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null){
                    personaleFragment.setPersonaleAdapter(new PersonaleAdapter((ArrayList<Utente>) o, personaleFragment.getContext(), personaleFragment.getOnPersonaleClickListner(), personaleFragment, false));
                }
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("errore");
                e.getMessage();

            }
        }, idRistorante, ruolo);
    }

    public void update(Utente utente){
        service.update(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(!(Boolean)o)
                    System.out.println("Update non effettuato\n");
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, utente);
    }

    public void create(Utente utente){
        service.create(new Callback() {
            @Override
            public void returnResult(Object o) {
                getByRistorante(utente.getIdRistorante());
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, utente);
    }

}
