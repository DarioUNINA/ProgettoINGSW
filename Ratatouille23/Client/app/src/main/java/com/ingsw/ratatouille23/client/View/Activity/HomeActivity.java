package com.ingsw.ratatouille23.client.View.Activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.telecom.StatusHints;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.UtentePresenter;
import com.google.android.material.tabs.TabItem;
import com.ingsw.ratatouille23.client.View.Fragment.CucinaFragment;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.GestioneMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.GestioneSalaFragment;
import com.ingsw.ratatouille23.client.View.SettingCreateDialog;

public class HomeActivity extends AppCompatActivity {

    AppCompatButton btnPersonale, btnSala, btnMenu, btnCucina, btnChangePass, btnLogOut;
    MaterialCardView cardViewSetting;
    TabItem tabItemUser, logTabUser;
    FloatingActionButton btnSettings;
    TextView txtFragmentAttuale, txtUtente, txtIndirizzo, txtTelefono;
    MaterialCardView selectedFragmentPersonale, selectedFragmentSala, selectedFragmentMenu, selectedFragmentCucina;

    private Utente utente;
    private Ristorante ristorante;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        utente = (Utente)getIntent().getSerializableExtra("utente");
        ristorante = (Ristorante)getIntent().getSerializableExtra("ristorante");

        btnCucina = findViewById(R.id.btnCuinca);
        btnMenu = findViewById(R.id.btnMenu);
        btnPersonale = findViewById(R.id.btnPersonale);
        btnSala = findViewById(R.id.btnSala);
        btnSettings = findViewById(R.id.btnSettingsRestaurant);


        txtFragmentAttuale = findViewById(R.id.txtFragmentAttuale);
        txtUtente = findViewById(R.id.txtUtente);
        txtTelefono = findViewById(R.id.txtTelefono);
        txtIndirizzo = findViewById(R.id.txtIndirizzo);

        txtUtente.setText(utente.getUsername());
        txtTelefono.setText(ristorante.getTelefono());
        txtIndirizzo.setText(ristorante.getIndirizzo());

        selectedFragmentPersonale = findViewById(R.id.selectedFragmentPerosnale);
        selectedFragmentSala = findViewById(R.id.selectedFragmentSala);
        selectedFragmentMenu = findViewById(R.id.selectedFragmentMenu);
        selectedFragmentCucina = findViewById(R.id.selectedFragmentCucina);

        tabItemUser = findViewById(R.id.TabUserItem);

        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

        if(utente.getRuolo()==Ruolo.admin)
            //fragmentTransaction.replace(R.id.homelayoutForFragment, .class,null);
            //Gestione personale

        if(utente.getRuolo()==Ruolo.supervisore)
            //fragmentTransaction.replace(R.id.homelayoutForFragment, .class,null);
            //Gestione personale

        if(utente.getRuolo()==Ruolo.cuoco)
            fragmentTransaction.replace(R.id.homelayoutForFragment, CucinaFragment.class,null);

        if(utente.getRuolo()==Ruolo.cameriere)
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

                FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.homelayoutForFragment, CucinaFragment.class,null);
                fragmentTransaction.commitNow();
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

        btnSettings.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(HomeActivity.this, SettingsActivity.class);
                intent.putExtra("utente", utente);
                startActivity(intent);

            }
        });


        tabItemUser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                FragmentManager manager = getSupportFragmentManager();
                SettingCreateDialog dialog = new SettingCreateDialog();
                dialog.show(manager, "SettingDialog");
//                SettingCreateDialog settingCreateDialog = new SettingCreateDialog();
//                settingCreateDialog.show(fragmentManager, "prova");
            }
        });


    }


    public void openDialog(){
        SettingCreateDialog categoryCreateDialog = new SettingCreateDialog();
        categoryCreateDialog.show(HomeActivity.this.getSupportFragmentManager(),"Setting");
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