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

import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

public class AddOrderDialog extends AppCompatDialogFragment {

    private OrdiniFragment ordiniFragment;

    private Spinner spinnerElementoOrdine, spinnerCategoriaOrdine;

    private TextView txtCategoria, txtElemento;

    public AddOrderDialog(OrdiniFragment ordiniFragment) {
        this.ordiniFragment = ordiniFragment;
    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_order, null);

        spinnerCategoriaOrdine = v.findViewById(R.id.categoria_spinnerOrdine);
        spinnerElementoOrdine = v.findViewById(R.id.elemento_spinnerOrdine);

        txtCategoria = v.findViewById(R.id.edtTxtCategoria);
        txtElemento = v.findViewById(R.id.txtElementoOrdine);

        CategoriaPresenter categoriaPresenter = new CategoriaPresenter(AddOrderDialog.this);
        categoriaPresenter.getAllSpinnerNuovoOrdine(((HomeActivity)getActivity()).getRistorante().getIdMenu());


        spinnerCategoriaOrdine.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtCategoria.setText(spinnerCategoriaOrdine.getSelectedItem().toString());

                ElementoPresenter elementoPresenter = new ElementoPresenter(AddOrderDialog.this);
                elementoPresenter.getAllNuovoOrdine(((HomeActivity)getActivity()).getRistorante().getIdRistorante(),spinnerCategoriaOrdine.getSelectedItem().toString());
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        spinnerElementoOrdine.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtElemento.setText(spinnerElementoOrdine.getSelectedItem().toString());
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
        getDialog().getWindow().getAttributes().width=1400;
        getDialog().getWindow().getAttributes().height=1150;
        getDialog().getWindow().setGravity(Gravity.CENTER_VERTICAL);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

    public OrdiniFragment getOrdiniFragment() {
        return ordiniFragment;
    }

    public void setOrdiniFragment(OrdiniFragment ordiniFragment) {
        this.ordiniFragment = ordiniFragment;
    }

    public Spinner getSpinnerElementoOrdine() {
        return spinnerElementoOrdine;
    }

    public void setSpinnerElementoOrdine(Spinner spinnerElementoOrdine) {
        this.spinnerElementoOrdine = spinnerElementoOrdine;
    }

    public Spinner getSpinnerCategoriaOrdine() {
        return spinnerCategoriaOrdine;
    }

    public void setSpinnerCategoriaOrdine(Spinner spinnerCategoriaOrdine) {
        this.spinnerCategoriaOrdine = spinnerCategoriaOrdine;
    }

    public TextView getTxtCategoria() {
        return txtCategoria;
    }

    public void setTxtCategoria(TextView txtCategoria) {
        this.txtCategoria = txtCategoria;
    }

    public TextView getTxtElemento() {
        return txtElemento;
    }

    public void setTxtElemento(TextView txtElemento) {
        this.txtElemento = txtElemento;
    }
}