package com.ingsw.ratatouille23.client.View.Activity;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Utility.StorageManager;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneCucina.CucinaFragment;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.GestioneMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.GestionePersonaleFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.GestioneSalaFragment;
import com.ingsw.ratatouille23.client.View.Dialog.SettingUtenteDialog;

public class HomeActivity extends AppCompatActivity {

    private StorageManager storageManager;
    private FirebaseAnalytics firebaseAnalytics;

    private AppCompatButton btnPersonale, btnSala, btnMenu, btnCucina, btnChangePass, btnLogOut;
    private FloatingActionButton btnSettings;

    private ImageView imageViewUtente, imageViewRistorante;
    private TextView txtFragmentAttuale, txtUtente, txtIndirizzo, txtTelefono;
    private MaterialCardView selectedFragmentPersonale, selectedFragmentSala, selectedFragmentMenu, selectedFragmentCucina;

    private GestioneSalaFragment gestioneSala;
    private GestioneMenuFragment gestioneMenuFragment;
    private GestionePersonaleFragment gestionePersonaleFragment;

    private Utente utente;
    private Ristorante ristorante;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        firebaseAnalytics = FirebaseAnalytics.getInstance(this);

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Schemata Principale");
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "HomeActivity");
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);

        utente = (Utente)getIntent().getSerializableExtra("utente");
        ristorante =(Ristorante)getIntent().getSerializableExtra("ristorante");
        storageManager = new StorageManager();

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

        imageViewUtente = findViewById(R.id.imageViewUtente);
        imageViewRistorante = findViewById(R.id.imageViewRistorante);

        storageManager.downloadLogoRistorante(ristorante, imageViewRistorante);
        storageManager.downloadPropicUtente(utente, imageViewUtente);


        gestioneSala = new GestioneSalaFragment();
        gestioneMenuFragment = new GestioneMenuFragment();
        gestionePersonaleFragment = new GestionePersonaleFragment();


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
                fragmentTransaction.replace(R.id.homelayoutForFragment, gestioneSala,null);
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

                FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
                fragmentTransaction.replace(R.id.homelayoutForFragment, gestionePersonaleFragment,null);
                fragmentTransaction.commitNow();

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
                fragmentTransaction.replace(R.id.homelayoutForFragment, gestioneMenuFragment,null);
                fragmentTransaction.commitNow();
            }
        });


        if(utente.getRuolo()==Ruolo.admin) {
            btnSettings.setVisibility(View.VISIBLE);
            btnPersonale.callOnClick();
        }
        if(utente.getRuolo()==Ruolo.supervisore) {
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
        imageViewUtente.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                    openDialog();
            }
        });

        if(utente.getPassword().equals("pwd")){
            setIntent(new Intent(HomeActivity.this, SettingsActivity.class));
            getIntent().putExtra("utente", utente);
            startActivity(getIntent());
        }

    }


    @Override
    public void onWindowFocusChanged(boolean hasFocus){
        System.out.println("daihsbdahdjahs\n\n\n");
        if(imageViewRistorante !=null)
            storageManager.downloadLogoRistorante(ristorante, imageViewRistorante);
        if(imageViewUtente!=null)
            storageManager.downloadPropicUtente(utente, imageViewUtente);

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

    public GestioneSalaFragment getGestioneSala() {
        return gestioneSala;
    }

    public void setGestioneSala(GestioneSalaFragment gestioneSala) {
        this.gestioneSala = gestioneSala;
    }

    public AppCompatButton getBtnPersonale() {
        return btnPersonale;
    }

    public void setBtnPersonale(AppCompatButton btnPersonale) {
        this.btnPersonale = btnPersonale;
    }

    public GestioneMenuFragment getGestioneMenuFragment() {
        return gestioneMenuFragment;
    }

    public void setGestioneMenuFragment(GestioneMenuFragment gestioneMenuFragment) {
        this.gestioneMenuFragment = gestioneMenuFragment;
    }

    public GestionePersonaleFragment getGestionePersonaleFragment() {
        return gestionePersonaleFragment;
    }

    public void setGestionePersonaleFragment(GestionePersonaleFragment gestionePersonaleFragment) {
        this.gestionePersonaleFragment = gestionePersonaleFragment;
    }

    public ImageView getImageViewUtente() {
        return imageViewUtente;
    }

    public void setImageViewUtente(ImageView imageViewUtente) {
        this.imageViewUtente = imageViewUtente;
    }

    public ImageView getImageViewRistorante() {
        return imageViewRistorante;
    }

    public void setImageViewRistorante(ImageView imageViewRistorante) {
        this.imageViewRistorante = imageViewRistorante;
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        //dialog conferma logout volendo
    }
}