package com.ingsw.ratatouille23.client.View.Activity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.google.android.material.card.MaterialCardView;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.GestioneMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.GestioneSalaFragment;

public class HomeActivity extends AppCompatActivity {

    AppCompatButton btnPersonale, btnSala, btnMenu, btnCucina;
    TextView txtFragmentAttuale;
    MaterialCardView selectedFragmentPersonale, selectedFragmentSala, selectedFragmentMenu, selectedFragmentCucina;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        btnCucina = findViewById(R.id.btnCuinca);
        btnMenu = findViewById(R.id.btnMenu);
        btnPersonale = findViewById(R.id.btnPersonale);
        btnSala = findViewById(R.id.btnSala);

        txtFragmentAttuale = findViewById(R.id.txtFragmentAttuale);

        selectedFragmentPersonale = findViewById(R.id.selectedFragmentPerosnale);
        selectedFragmentSala = findViewById(R.id.selectedFragmentSala);
        selectedFragmentMenu = findViewById(R.id.selectedFragmentMenu);
        selectedFragmentCucina = findViewById(R.id.selectedFragmentCucina);

        selectedFragmentPersonale.setVisibility(View.INVISIBLE);
        selectedFragmentSala.setVisibility(View.VISIBLE);
        selectedFragmentMenu.setVisibility(View.INVISIBLE);
        selectedFragmentCucina.setVisibility(View.INVISIBLE);
        selectedFragmentSala.setCardBackgroundColor(getResources().getColor(R.color.green));


        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

        fragmentTransaction.replace(R.id.homelayoutForFragment, GestioneSalaFragment.class,null);
        fragmentTransaction.commitNow();

        btnCucina.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtFragmentAttuale.setText("GESTIONE CUCINA");
                selectedFragmentPersonale.setVisibility(View.INVISIBLE);
                selectedFragmentSala.setVisibility(View.INVISIBLE);
                selectedFragmentMenu.setVisibility(View.INVISIBLE);
                selectedFragmentCucina.setVisibility(View.VISIBLE);
                selectedFragmentCucina.setCardBackgroundColor(getResources().getColor(R.color.green));
            }
        });

        btnSala.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtFragmentAttuale.setText("GESTIONE SALA");
                selectedFragmentPersonale.setVisibility(View.INVISIBLE);
                selectedFragmentSala.setVisibility(View.VISIBLE);
                selectedFragmentMenu.setVisibility(View.INVISIBLE);
                selectedFragmentCucina.setVisibility(View.INVISIBLE);
                selectedFragmentSala.setCardBackgroundColor(getResources().getColor(R.color.green));


                FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.homelayoutForFragment, GestioneSalaFragment.class,null);
                fragmentTransaction.commitNow();
            }
        });

        btnPersonale.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtFragmentAttuale.setText("GESTIONE PERSONALE");
                selectedFragmentPersonale.setVisibility(View.VISIBLE);
                selectedFragmentSala.setVisibility(View.INVISIBLE);
                selectedFragmentMenu.setVisibility(View.INVISIBLE);
                selectedFragmentCucina.setVisibility(View.INVISIBLE);
                selectedFragmentPersonale.setCardBackgroundColor(getResources().getColor(R.color.green));

            }
        });

        btnMenu.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtFragmentAttuale.setText("GESTIONE MENU");
                selectedFragmentPersonale.setVisibility(View.INVISIBLE);
                selectedFragmentSala.setVisibility(View.INVISIBLE);
                selectedFragmentMenu.setVisibility(View.VISIBLE);
                selectedFragmentCucina.setVisibility(View.INVISIBLE);
                selectedFragmentMenu.setCardBackgroundColor(getResources().getColor(R.color.green));
                FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.homelayoutForFragment, GestioneMenuFragment.class,null);
                fragmentTransaction.commitNow();
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