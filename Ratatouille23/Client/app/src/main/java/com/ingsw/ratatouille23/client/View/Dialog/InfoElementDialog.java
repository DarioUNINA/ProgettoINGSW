package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;

import com.ingsw.ratatouille23.client.Model.Allergene;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;


public class InfoElementDialog extends AppCompatDialogFragment {

    private ElementiMenuFragment elementiMenuFragment;

    private ElementiGSFragment elementiGSFragment;
    private TextView txtDescrizione, txtAllergeni;
    private Elemento elemento;

    public InfoElementDialog(ElementiMenuFragment elementiMenuFragment, Elemento elemento) {
        this.elementiMenuFragment = elementiMenuFragment;
        this.elemento = elemento;
    }

    public InfoElementDialog(ElementiGSFragment elementiGSFragment, Elemento elemento) {
        this.elementiGSFragment = elementiGSFragment;
        this.elemento = elemento;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_info_elemento, null);

        txtDescrizione = (TextView)v.findViewById(R.id.txtDescrizone);
        txtAllergeni = (TextView)v.findViewById(R.id.txtAllergeni);
        txtDescrizione.setText("descrizione momentanea");

        String allergeni = "";
        for(String a: elemento.getAllergeni())
            allergeni+=a+", ";

        txtAllergeni.setText(allergeni);
        txtDescrizione.setText(elemento.getDescrizione());


        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(v)
                .show();

        return dialog;
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=850;
        getDialog().getWindow().getAttributes().height=950;
        getDialog().getWindow().setGravity(Gravity.CENTER_VERTICAL);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }
}