package com.ingsw.ratatouille23.client.View.Fragment.Setting;

import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.android.material.card.MaterialCardView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Utility.StorageManager;

public class SettingUtenteFragment extends Fragment {

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    private FirebaseAnalytics firebaseAnalytics;
    private StorageManager storageManager;

    private Utente utente;

    private ImageView imageViewUtente;
    private TextView txtUtente;
    private EditText pwdAttuale, newPassword, confermaPassword;
    private MaterialCardView cardViewPwdAttuale;

    public SettingUtenteFragment() {
        // Required empty public constructor
    }

    public static SettingUtenteFragment newInstance(String param1, String param2) {
        SettingUtenteFragment fragment = new SettingUtenteFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }

        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Opzioni Utente");
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "SettingUtenteFragment");
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_setting_utente, container, false);

        utente = (Utente)getActivity().getIntent().getSerializableExtra("utente");

        pwdAttuale = rootView.findViewById(R.id.editTxtPwdAttuale);
        newPassword = rootView.findViewById(R.id.editNuovaPwd);
        confermaPassword = rootView.findViewById(R.id.editTxtConfermaPwd);
        cardViewPwdAttuale = rootView.findViewById(R.id.cardViewPwdAttuale);
        imageViewUtente = rootView.findViewById(R.id.imageViewUtente);

        if(utente.getPassword().equals("pwd")){
            pwdAttuale.setText(utente.getPassword());
            pwdAttuale.setVisibility(View.INVISIBLE);
            cardViewPwdAttuale.setVisibility(View.INVISIBLE);
        }
        txtUtente = rootView.findViewById(R.id.txtNomeUtente);
        txtUtente.setText(utente.getUsername());

        storageManager = new StorageManager();
        storageManager.downloadPropicUtente(utente, imageViewUtente);

        imageViewUtente.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction(Intent.ACTION_GET_CONTENT);
                startActivityForResult(intent, 1926);
            }
        });


        return rootView;


    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == 1926 && data != null && data.getData() != null){
            imageViewUtente.setImageURI(data.getData());
            storageManager.uploadPropicUtente(utente, data.getData());
        }
    }


    public EditText getPwdAttuale() {
        return pwdAttuale;
    }

    public void setPwdAttuale(EditText pwdAttuale) {
        this.pwdAttuale = pwdAttuale;
    }

    public EditText getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(EditText newPassword) {
        this.newPassword = newPassword;
    }

    public EditText getConfermaPassword() {
        return confermaPassword;
    }

    public void setConfermaPassword(EditText confermaPassword) {
        this.confermaPassword = confermaPassword;
    }


}