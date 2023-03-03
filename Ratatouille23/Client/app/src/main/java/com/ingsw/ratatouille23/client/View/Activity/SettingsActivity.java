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
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.Setting.SettingRistoranteFragment;
import com.ingsw.ratatouille23.client.View.Fragment.Setting.SettingUtenteFragment;

public class SettingsActivity extends AppCompatActivity {

    FloatingActionButton btnBack;
    Utente utente;
    Ristorante ristorante;

    SettingRistoranteFragment settingRistoranteFragment;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        btnBack = findViewById(R.id.btnBack);

        settingRistoranteFragment = new SettingRistoranteFragment();


        if(getIntent().hasExtra("utente")) {
            utente = (Utente) getIntent().getSerializableExtra("utente");
            fragmentTransaction.replace(R.id.homeSetting, SettingUtenteFragment.class, null);

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
                if(ristorante!=null)

                onBackPressed();
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
}
