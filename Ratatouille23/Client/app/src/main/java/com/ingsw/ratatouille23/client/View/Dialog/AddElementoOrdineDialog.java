package com.ingsw.ratatouille23.client.View.Dialog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;

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
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;
import java.util.ArrayList;


public class AddElementoOrdineDialog extends AppCompatDialogFragment {

    private ElementiGSFragment elementiGSFragment;

    private TextView  txtNuovaCategoria, txtNuovoElementoOrdine;

    ArrayList<Categoria> list;

    private AppCompatButton btnNewElementOrder;
    private Spinner spinnerElementoNewOrdine;
    private Spinner spinnerCategoriaNewOrdine;

    public AddElementoOrdineDialog(ElementiGSFragment elementiGSFragment) {
        this.elementiGSFragment = elementiGSFragment;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_elemento_ordine, null);

        spinnerElementoNewOrdine = v.findViewById(R.id.elemento_spinnerNewOrdine);
        spinnerCategoriaNewOrdine = v.findViewById(R.id.categoria_spinnerNewOrdine);
        txtNuovaCategoria = v.findViewById(R.id.edtTxtNuovaCategoria);
        txtNuovoElementoOrdine = v.findViewById(R.id.txtNuovoElementoOrdine);
        btnNewElementOrder = v.findViewById(R.id.btnNewElementOrder);


        CategoriaPresenter categoriaPresenter = new CategoriaPresenter(AddElementoOrdineDialog.this);
        categoriaPresenter.getAllSpinnerChangeOrdine(((HomeActivity)getActivity()).getRistorante().getIdMenu());


        spinnerCategoriaNewOrdine.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtNuovaCategoria.setText(spinnerCategoriaNewOrdine.getSelectedItem().toString());

                ElementoPresenter elementoPresenter = new ElementoPresenter(AddElementoOrdineDialog.this);
                elementoPresenter.getAllChangeOrdine(((HomeActivity)getActivity()).getRistorante().getIdRistorante(),spinnerCategoriaNewOrdine.getSelectedItem().toString());
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        spinnerElementoNewOrdine.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtNuovoElementoOrdine.setText(spinnerElementoNewOrdine.getSelectedItem().toString());
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        btnNewElementOrder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                getDialog().dismiss();
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
        getDialog().getWindow().getAttributes().height=850;
        getDialog().getWindow().setGravity(Gravity.CENTER);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

    public ElementiGSFragment getElementiGSFragment() {
        return elementiGSFragment;
    }

    public void setElementiGSFragment(ElementiGSFragment elementiGSFragment) {
        this.elementiGSFragment = elementiGSFragment;
    }

    public TextView getTxtNuovaCategoria() {
        return txtNuovaCategoria;
    }

    public void setTxtNuovaCategoria(TextView txtNuovaCategoria) {
        this.txtNuovaCategoria = txtNuovaCategoria;
    }

    public TextView getTxtNuovoElementoOrdine() {
        return txtNuovoElementoOrdine;
    }

    public void setTxtNuovoElementoOrdine(TextView txtNuovoElementoOrdine) {
        this.txtNuovoElementoOrdine = txtNuovoElementoOrdine;
    }

    public Spinner getSpinnerElementoNewOrdine() {
        return spinnerElementoNewOrdine;
    }

    public void setSpinnerElementoNewOrdine(Spinner spinnerElementoNewOrdine) {
        this.spinnerElementoNewOrdine = spinnerElementoNewOrdine;
    }

    public Spinner getSpinnerCategoriaNewOrdine() {
        return spinnerCategoriaNewOrdine;
    }

    public void setSpinnerCategoriaNewOrdine(Spinner spinnerCategoriaNewOrdine) {
        this.spinnerCategoriaNewOrdine = spinnerCategoriaNewOrdine;
    }
}