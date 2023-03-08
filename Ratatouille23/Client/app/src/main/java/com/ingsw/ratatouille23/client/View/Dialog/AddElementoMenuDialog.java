package com.ingsw.ratatouille23.client.View.Dialog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

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
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Presenter.AllergenePresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Adapter.AllergeniAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

public class AddElementoMenuDialog extends AppCompatDialogFragment {


    private ElementiMenuFragment elementiMenuFragment;
    Categoria categoria;

    private RecyclerView recyclerAllergeni;
    private AppCompatButton btnNewElementMenu;

    private AllergenePresenter allergenePresenter;

    private AllergeniAdapter.OnElementiClickListner onElementiClickListner;

    private AllergeniAdapter allergeniAdapter;

    private TextView  txtPrezzo, txtNomeElemento, txtDescrizioneElemento;

    public AddElementoMenuDialog(ElementiMenuFragment elementiMenuFragment, Categoria categoria) {
        this.elementiMenuFragment = elementiMenuFragment;
        this.categoria = categoria;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_elemento_menu, null);

        recyclerAllergeni = v.findViewById(R.id.recyclerAllergeni);
        txtPrezzo = v.findViewById(R.id.edtTxtPrezzo);
        txtNomeElemento = v.findViewById(R.id.edtTxtNuovaElemento);
        txtDescrizioneElemento = v.findViewById(R.id.txtDescrizioneElemento);
        btnNewElementMenu = v.findViewById(R.id.btnNewElementMenu);


        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        recyclerAllergeni.setLayoutManager(linearLayoutManager);

        allergeniAdapter = new AllergeniAdapter(new ArrayList<Allergene>(), getContext(), onElementiClickListner, this);

        AllergenePresenter allergenePresenter = new AllergenePresenter(AddElementoMenuDialog.this);
        allergenePresenter.getAll();

        recyclerAllergeni.setAdapter(allergeniAdapter);


        btnNewElementMenu.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(!txtNomeElemento.getText().toString().isEmpty())
                    if(!txtPrezzo.getText().toString().isEmpty()){

                        ArrayList<String> allergeni = new ArrayList<String>();
                        for (Allergene a: allergeniAdapter.getAddAllergeni()) {
                            allergeni.add(a.getNome());
                        }

                        ElementoPresenter newElementPresenter = new ElementoPresenter(elementiMenuFragment);
                        Elemento newElement = new Elemento();

                        newElement.setNome(txtNomeElemento.getText().toString());
                        newElement.setDescrizione(txtDescrizioneElemento.getText().toString());
                        newElement.setPrezzo(Float.parseFloat(txtPrezzo.getText().toString()));
//                        newElement.setIdCategoria(elementiMenuFragment.getCategoriaSelected().getIdCategoria());
                        System.out.println( newElement.getNome() + ", " + newElement.getDescrizione() + ", " + newElement.getPrezzo());
//
//                        newElement.setAllergeni(allergeni);
//                        newElementPresenter.create(newElement);

                        getDialog().dismiss();

                    }



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
        getDialog().getWindow().getAttributes().height=1350;
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

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public RecyclerView getRecyclerAllergeni() {
        return recyclerAllergeni;
    }

    public void setRecyclerAllergeni(RecyclerView recyclerAllergeni) {
        this.recyclerAllergeni = recyclerAllergeni;
    }

    public AppCompatButton getBtnNewElementMenu() {
        return btnNewElementMenu;
    }

    public void setBtnNewElementMenu(AppCompatButton btnNewElementMenu) {
        this.btnNewElementMenu = btnNewElementMenu;
    }

    public AllergenePresenter getAllergenePresenter() {
        return allergenePresenter;
    }

    public void setAllergenePresenter(AllergenePresenter allergenePresenter) {
        this.allergenePresenter = allergenePresenter;
    }

    public AllergeniAdapter.OnElementiClickListner getOnElementiClickListner() {
        return onElementiClickListner;
    }

    public void setOnElementiClickListner(AllergeniAdapter.OnElementiClickListner onElementiClickListner) {
        this.onElementiClickListner = onElementiClickListner;
    }

    public TextView getTxtPrezzo() {
        return txtPrezzo;
    }

    public void setTxtPrezzo(TextView txtPrezzo) {
        this.txtPrezzo = txtPrezzo;
    }

    public AllergeniAdapter getAllergeniAdapter() {
        return allergeniAdapter;
    }

    public void setAllergeniAdapter(AllergeniAdapter allergeniAdapter) {

        this.allergeniAdapter = allergeniAdapter;
        getRecyclerAllergeni().setAdapter(allergeniAdapter);
    }
}