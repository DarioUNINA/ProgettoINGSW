package com.ingsw.ratatouille23.client.View.Activity;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.google.android.material.tabs.TabItem;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneCucina.CucinaFragment;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.GestioneMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.GestioneSalaFragment;
import com.ingsw.ratatouille23.client.View.Dialog.SettingUtenteDialog;

public class HomeActivity extends AppCompatActivity {

    AppCompatButton btnPersonale, btnSala, btnMenu, btnCucina, btnChangePass, btnLogOut;
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
        ristorante =(Ristorante)getIntent().getSerializableExtra("ristorante");

        //utente = new Utente("Dario", "123", 1, Ruolo.admin);
        //ristorante = new Ristorante(1, "Nome", "Indirizzo", "Telefono", 1);

        btnCucina = findViewById(R.id.btnCuinca);
        btnMenu = findViewById(R.id.btnMenu);
        btnPersonale = findViewById(R.id.btnPersonale);
        btnSala = findViewById(R.id.btnSala);
        btnSettings = findViewById(R.id.btnSettingsRestaurant);
        btnSettings.setVisibility(View.INVISIBLE);


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


        if(utente.getRuolo()==Ruolo.admin) {
            //fragmentTransaction.replace(R.id.homelayoutForFragment, .class,null);
            //Gestione personale
            btnSettings.setVisibility(View.VISIBLE);
            btnPersonale.callOnClick();
        }
        if(utente.getRuolo()==Ruolo.supervisore) {
            //fragmentTransaction.replace(R.id.homelayoutForFragment, .class,null);
            //Gestione personale
            btnPersonale.callOnClick();
        }
        if(utente.getRuolo()==Ruolo.cuoco) {
            fragmentTransaction.replace(R.id.homelayoutForFragment, CucinaFragment.class, null);
            btnCucina.callOnClick();

            btnMenu.setEnabled(false);
            btnMenu.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("grey")));

            btnPersonale.setEnabled(false);
            btnPersonale.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("grey")));

            btnSala.setEnabled(false);
            btnSala.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("grey")));

        }
        if(utente.getRuolo()==Ruolo.cameriere) {
            fragmentTransaction.replace(R.id.homelayoutForFragment, GestioneSalaFragment.class, null);
            btnSala.callOnClick();

            btnSettings.setEnabled(false);
            btnSettings.setImageTintList(ColorStateList.valueOf(Color.parseColor("grey")));

            btnPersonale.setEnabled(false);
            btnPersonale.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("grey")));

            btnCucina.setEnabled(false);
            btnCucina.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("grey")));

        }

        fragmentTransaction.commitNow();

        btnSettings.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(HomeActivity.this, SettingsActivity.class);
                intent.putExtra("ristorante", ristorante);
                startActivity(intent);

            }
        });


        tabItemUser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                    openDialog();
            }
        });

        if(utente.getPassword().equals("123")){
            setIntent(new Intent(HomeActivity.this, SettingsActivity.class));
            getIntent().putExtra("utente", utente);
            startActivity(getIntent());
        }



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

    public void openDialog(){
        SettingUtenteDialog settingUtenteDialog = new SettingUtenteDialog(HomeActivity.this);
        settingUtenteDialog.show(getSupportFragmentManager(), "setting");
    }
}