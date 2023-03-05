package com.ingsw.ratatouille23.client.View.Dialog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;

import android.app.AlertDialog;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.TextView;

import com.ingsw.ratatouille23.client.Model.Allergene;
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Presenter.AllergenePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

public class AddElementoMenuDialog extends AppCompatDialogFragment {


    private ElementiMenuFragment elementiMenuFragment;
    Categoria categoria;

    private Spinner allergeniSpinner;

    private TextView txtAllergene;

    public AddElementoMenuDialog(ElementiMenuFragment elementiMenuFragment, Categoria categoria) {
        this.elementiMenuFragment = elementiMenuFragment;
        this.categoria = categoria;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_elemento_menu, null);

        allergeniSpinner = v.findViewById(R.id.allergen_spinner);
        txtAllergene = v.findViewById(R.id.txtNomeAllergene);

        AllergenePresenter allergenePresenter = new AllergenePresenter(AddElementoMenuDialog.this);
        allergenePresenter.getAll();

        allergeniSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtAllergene.setText(allergeniSpinner.getSelectedItem().toString());
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
        getDialog().getWindow().getAttributes().height=1050;
        getDialog().getWindow().setGravity(Gravity.CENTER);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

    public ElementiMenuFragment getElementiMenuFragment() {
        return elementiMenuFragment;
    }

    public void setElementiMenuFragment(ElementiMenuFragment elementiMenuFragment) {
        this.elementiMenuFragment = elementiMenuFragment;
    }

    public Spinner getAllergeniSpinner() {
        return allergeniSpinner;
    }

    public void setAllergeniSpinner(Spinner allergeniSpinner) {
        this.allergeniSpinner = allergeniSpinner;
    }
}