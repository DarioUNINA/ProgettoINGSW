package com.ingsw.ratatouille23.client.View.Fragment.Activity;

import android.os.Bundle;

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


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

        if(getIntent().hasExtra("utente")) {
            utente = (Utente) getIntent().getSerializableExtra("utente");
            fragmentTransaction.replace(R.id.homeSetting, SettingUtenteFragment.class, null);
        }else{
             ristorante = (Ristorante) getIntent().getSerializableExtra("ristorante");
             fragmentTransaction.replace(R.id.homeSetting, SettingRistoranteFragment.class, null);
        }

        fragmentTransaction.commitNow();

        btnBack = findViewById(R.id.btnBack);
        if(utente.getPassword().equals("123"))
            btnBack.setVisibility(View.INVISIBLE);

        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
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

}
