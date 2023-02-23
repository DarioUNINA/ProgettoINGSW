package com.ingsw.ratatouille23.client.Presenter;

import android.content.Intent;
import android.os.Bundle;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.Class.TavoloService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;


public class TavoloPresenter {

    private TavoloService service;

    public TavoloPresenter() {
        service = new TavoloService();
    }



}
