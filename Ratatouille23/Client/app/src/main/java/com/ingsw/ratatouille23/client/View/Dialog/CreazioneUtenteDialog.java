package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Space;
import android.widget.Spinner;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;

import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.PersonaleFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

import java.util.ArrayList;

public class CreazioneUtenteDialog extends AppCompatDialogFragment {

    private PersonaleFragment personaleFragment;

    private TextView txtNuovoRuolo, txtNuovoNome;
    private Spinner spinnerRuoli;

    ArrayList<String> possibleValues = new ArrayList<String>();



    public CreazioneUtenteDialog(PersonaleFragment personaleFragment) {
        this.personaleFragment = personaleFragment;
    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_creazione_utente, null);

        spinnerRuoli = v.findViewById(R.id.ruoli_spinner);
        txtNuovoNome = v.findViewById(R.id.edtTxtNuovoNomeUtente);
        txtNuovoRuolo = v.findViewById(R.id.edtTxtNuovoRuoloUtente);

        possibleValues.add("Tutti");
        for (Ruolo r: Ruolo.values()) {
            possibleValues.add(r.toString());
        }


        spinnerRuoli.setAdapter(new ArrayAdapter<String>(getContext(), R.layout.spinner_item,  possibleValues));

        spinnerRuoli.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtNuovoRuolo.setText(spinnerRuoli.getSelectedItem().toString());
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });



        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(v)
                .show();

        return dialog;
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=850;
        getDialog().getWindow().getAttributes().height=1150;
        getDialog().getWindow().setGravity(Gravity.CENTER_VERTICAL);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }
}