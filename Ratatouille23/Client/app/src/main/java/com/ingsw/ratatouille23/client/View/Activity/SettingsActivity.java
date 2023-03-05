package com.ingsw.ratatouille23.client.View.Activity;

import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.view.View;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.RistorantePresenter;
import com.ingsw.ratatouille23.client.Presenter.UtentePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.Setting.SettingRistoranteFragment;
import com.ingsw.ratatouille23.client.View.Fragment.Setting.SettingUtenteFragment;

public class SettingsActivity extends AppCompatActivity {

    FloatingActionButton btnBack, btnConferma;
    Utente utente;
    Ristorante ristorante;
    SettingRistoranteFragment settingRistoranteFragment;
    SettingUtenteFragment settingUtenteFragment;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        btnBack = findViewById(R.id.btnBack);
        btnConferma = findViewById(R.id.btnConferma);

        settingRistoranteFragment = new SettingRistoranteFragment();
        settingUtenteFragment = new SettingUtenteFragment();


        if(getIntent().hasExtra("utente")) {
            utente = (Utente) getIntent().getSerializableExtra("utente");
            fragmentTransaction.replace(R.id.homeSetting, settingUtenteFragment, null);

            if(utente.getPassword().equals("pwd"))
                btnBack.setVisibility(View.INVISIBLE);
        }else{
             ristorante = (Ristorante) getIntent().getSerializableExtra("ristorante");
             fragmentTransaction.replace(R.id.homeSetting, settingRistoranteFragment, null);
        }

        fragmentTransaction.commitNow();


        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onBackPressed();
            }
        });

        btnConferma.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(utente!=null){
                    updatePassword();
                }else
                    updateInfoRistorante();
            }
        });
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus){
        super.onWindowFocusChanged(hasFocus);
        View view = getWindow().getDecorView();
        if(hasFocus){
            view.setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);

        }
    }


    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
    }

    public Ristorante getRistorante() {
        return ristorante;
    }

    public void setRistorante(Ristorante ristorante) {
        this.ristorante = ristorante;
    }


    public void updatePassword(){
        if(utente.getPassword().equals(settingUtenteFragment.getPwdAttuale().getText().toString())){
            if(settingUtenteFragment.getConfermaPassword().getText().toString().equals(settingUtenteFragment.getNewPassword().getText().toString())){
                UtentePresenter presenter = new UtentePresenter(settingUtenteFragment);
                utente.setPassword(settingUtenteFragment.getNewPassword().getText().toString());
                presenter.update(utente);
                //Dialog update effettuato + logOut
                startActivity(new Intent(SettingsActivity.this, LogInActivity.class));
            }else
                //Dialog password non coincidono
                System.out.println("password non coincidono");
        }else
            //Password Errata inserita
            System.out.println("password attuale errata " +settingUtenteFragment.getPwdAttuale().getText() +" " +utente.getPassword());

    }

    public void updateInfoRistorante(){
        RistorantePresenter presenter = new RistorantePresenter();
        Ristorante ristorante = settingRistoranteFragment.getRistorante();
        ristorante.setTelefono(settingRistoranteFragment.getTxtTelefono().getText().toString());
        ristorante.setIndirizzo(settingRistoranteFragment.getTxtIndirizzo().getText().toString());
        presenter.update(ristorante);
        //Dialog update riuscito + ritorno al login
    }


}
