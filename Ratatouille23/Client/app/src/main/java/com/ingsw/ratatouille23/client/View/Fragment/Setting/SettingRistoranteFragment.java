package com.ingsw.ratatouille23.client.View.Fragment.Setting;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.SettingsActivity;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link SettingRistoranteFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class SettingRistoranteFragment extends Fragment {


    private Ristorante ristorante;

    private EditText txtTelefono, txtIndirizzo;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    public SettingRistoranteFragment() {
        // Required empty public constructor
    }

    public static SettingRistoranteFragment newInstance(String param1, String param2) {
        SettingRistoranteFragment fragment = new SettingRistoranteFragment();
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
        View root = inflater.inflate(R.layout.fragment_setting_restaurant, container, false);

        ristorante = ((SettingsActivity)getActivity()).getRistorante();
        txtIndirizzo = root.findViewById(R.id.editTxtNumber);
        txtTelefono = root.findViewById(R.id.editTxtAddress);

        txtIndirizzo.setText(ristorante.getIndirizzo());
        txtTelefono.setText(ristorante.getTelefono());

        return root;
    }
}