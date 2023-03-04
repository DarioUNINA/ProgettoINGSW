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
import android.widget.ArrayAdapter;
import android.widget.Spinner;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.CategoriaAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.List;

public class AddElementoOrdineDialog extends AppCompatDialogFragment {

    private ElementiGSFragment elementiGSFragment;

    private List<String> categoriaList;
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

        CategoriaPresenter categoriaPresenter = new CategoriaPresenter(AddElementoOrdineDialog.this);
        categoriaPresenter.getAllSpinner(((HomeActivity)getActivity()).getRistorante().getIdMenu());

//        ArrayAdapter<Categoria> adapter = new ArrayAdapter<Categoria>(getContext(),
//                androidx.appcompat.R.layout.support_simple_spinner_dropdown_item, categoriaList);



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

    public List<String> getCategoriaList() {
        return categoriaList;
    }

    public void setCategoriaList(List<String> categoriaList) {
        this.categoriaList = categoriaList;
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