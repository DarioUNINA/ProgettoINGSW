package com.ingsw.ratatouille23.client.View.Fragment;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.R;

public class SettingUserFragment extends Fragment {

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;


    private Utente utente;

    private TextView txtUtente;

    public SettingUserFragment() {
        // Required empty public constructor
    }

    public static SettingUserFragment newInstance(String param1, String param2) {
        SettingUserFragment fragment = new SettingUserFragment();
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




    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_setting_user, container, false);

        utente = (Utente)getActivity().getIntent().getSerializableExtra("utente");

        txtUtente = rootView.findViewById(R.id.txtNomeUtente);
        txtUtente.setText(utente.getUsername());

        return rootView;


    }
}