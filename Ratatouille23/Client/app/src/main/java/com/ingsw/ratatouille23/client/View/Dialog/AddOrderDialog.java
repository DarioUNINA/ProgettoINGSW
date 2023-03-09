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

import com.google.android.material.card.MaterialCardView;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.Presenter.TavoloPresenter;
import com.ingsw.ratatouille23.client.Presenter.UtentePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiNuovoOrdineAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.TavoliFragment;

import java.util.ArrayList;

public class AddOrderDialog extends AppCompatDialogFragment {

    private OrdiniFragment ordiniFragment;
    private Spinner spinnerElementoOrdine, spinnerCategoriaOrdine, spinnerCamerieri;

    private TextView txtCategoria, txtElemento, txtCameriereOrdine, txtServe;
    private AppCompatButton btnNewCategory;
    private RecyclerView recyclerViewNuovoOrdine;

    private MaterialCardView materialCameriere;
    private ElementiNuovoOrdineAdapter elementiNuovoOrdineAdapter;
    private ArrayList<Elemento> elementi = new ArrayList<Elemento>();
    private ArrayList<Elemento> elementiNuovi  = new ArrayList<Elemento>();
    private ElementiNuovoOrdineAdapter.OnElementiClickListner onElementiClickListner;

    private OrdinePresenter ordinePresenter;
    private ElementoPresenter elementoPresenter;

    private int idTavolo;
    private String cameriere = new String();
    private Ordine newOrdine = new Ordine();

    public AddOrderDialog(OrdiniFragment ordiniFragment, int idTavolo, String cameriere) {
        this.ordiniFragment = ordiniFragment;
        this.idTavolo = idTavolo;
        this.cameriere = cameriere;
    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_order, null);

        spinnerCategoriaOrdine = v.findViewById(R.id.categoria_spinnerOrdine);
        spinnerElementoOrdine = v.findViewById(R.id.elemento_spinnerOrdine);
        spinnerCamerieri = v.findViewById(R.id.spinnerCamerieri);
        materialCameriere = v.findViewById(R.id.materialCameriereOrdine);
        txtCategoria = v.findViewById(R.id.edtTxtCategoria);
        txtElemento = v.findViewById(R.id.txtElementoOrdine);
        txtCameriereOrdine = v.findViewById(R.id.txtCameriereOrdine);
        txtServe = v.findViewById(R.id.txtServe);
        btnNewCategory = v.findViewById(R.id.btnNewCategory);
        recyclerViewNuovoOrdine = v.findViewById(R.id.recyclerViewNuovoOrdine);

        if(ordiniFragment.getTavoloSelected().isOccupato()) {
            materialCameriere.setVisibility(View.INVISIBLE);
            txtServe.setVisibility(View.INVISIBLE);
        }

        ordinePresenter = new OrdinePresenter(this);
        elementoPresenter = new ElementoPresenter();


        newOrdine.setIdTavolo(idTavolo);
        ordinePresenter.create();


        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);


        CategoriaPresenter categoriaPresenter = new CategoriaPresenter(AddOrderDialog.this);
        categoriaPresenter.getAllSpinnerNuovoOrdine(((HomeActivity)getActivity()).getRistorante().getIdMenu());

        UtentePresenter utentePresenter = new UtentePresenter(AddOrderDialog.this);
        utentePresenter.getByRistoranteAndRuolo(((HomeActivity)getActivity()).getRistorante().getIdRistorante(), "cameriere");

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
                for (Elemento elemento: elementi) {
                    if(elemento.getNome() == spinnerElementoOrdine.getSelectedItem().toString()){
                        boolean flag = true;
                        for(Elemento e: elementiNuovi)
                            if(elemento.getIdElemento() == e.getIdElemento()) {
                                flag = false;
                                break;
                            }
                        if(flag) {
                            elementiNuovi.add(elemento);
                            elementoPresenter.addToOrdinazione(((HomeActivity) getActivity()).getRistorante().getIdMenu(), spinnerCategoriaOrdine.getSelectedItem().toString(), spinnerElementoOrdine.getSelectedItem().toString(), newOrdine.getIdOrdine());
                        }


                    }
                }

                elementiNuovoOrdineAdapter =  new ElementiNuovoOrdineAdapter(elementiNuovi, getContext(), getOnElementiClickListner(), AddOrderDialog.this);
                recyclerViewNuovoOrdine.setLayoutManager(linearLayoutManager);
                recyclerViewNuovoOrdine.setAdapter(elementiNuovoOrdineAdapter);
                elementiNuovoOrdineAdapter.notifyDataSetChanged();


            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

        spinnerCamerieri.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                txtCameriereOrdine.setText(spinnerCamerieri.getSelectedItem().toString());
                setCameriere(spinnerCamerieri.getSelectedItem().toString());
                TavoloPresenter tavoloPresenter = new TavoloPresenter();
                ordiniFragment.getTavoloSelected().setCameriere(cameriere);
                ordiniFragment.getTavoloSelected().setOccupato(true);
                tavoloPresenter.updateTavolo(ordiniFragment.getTavoloSelected());

            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });


        if(((HomeActivity) getActivity()).getUtente().getRuolo() != Ruolo.admin) {
            materialCameriere.setVisibility(View.INVISIBLE);
            txtServe.setVisibility(View.INVISIBLE);
        }


        btnNewCategory.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                TavoloPresenter tavoloPresenter = new TavoloPresenter(((HomeActivity)getActivity()).getGestioneSala().getTavoliFragment());
                tavoloPresenter.getTavoli();

                ordiniFragment.setTavoloSelected(null);
                ordiniFragment.getNomeCameriere().setText("");
                ordiniFragment.getIdTavolo().setText("");
                ordiniFragment.getOrdineAdapter().setOrdini(new ArrayList<>(), false);

                ElementiGSFragment elementiGSFragment = ((HomeActivity)getActivity()).getGestioneSala().getElementiGSFragment();
//                elementiGSFragment.getTxtTotale().setText("0");
//                elementiGSFragment.getTxtUnita().setText("0");
                elementiGSFragment.getTxtIdOrdine().setText("");
                elementiGSFragment.getElementiGSAdapter().setElementi(new ArrayList<Elemento>(), false);

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

    public Ordine getNewOrdine() {
        return newOrdine;
    }

    public void setNewOrdine(Ordine newOrdine) {
        this.newOrdine = newOrdine;
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

    public RecyclerView getRecyclerViewNuovoOrdine() {
        return recyclerViewNuovoOrdine;
    }

    public void setRecyclerViewNuovoOrdine(RecyclerView recyclerViewNuovoOrdine) {
        this.recyclerViewNuovoOrdine = recyclerViewNuovoOrdine;
    }


    public ElementiNuovoOrdineAdapter.OnElementiClickListner getOnElementiClickListner() {
        return onElementiClickListner;
    }

    public void setOnElementiClickListner(ElementiNuovoOrdineAdapter.OnElementiClickListner onElementiClickListner) {
        this.onElementiClickListner = onElementiClickListner;
    }

    public ArrayList<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(ArrayList<Elemento> elementi) {
        this.elementi = elementi;
    }

    public ArrayList<Elemento> getElementiNuovi() {
        return elementiNuovi;
    }

    public void setElementiNuovi(ArrayList<Elemento> elementiNuovi) {
        this.elementiNuovi = elementiNuovi;
    }

    public Spinner getSpinnerCamerieri() {
        return spinnerCamerieri;
    }

    public void setSpinnerCamerieri(Spinner spinnerCamerieri) {
        this.spinnerCamerieri = spinnerCamerieri;
    }

    public TextView getTxtCameriereOrdine() {
        return txtCameriereOrdine;
    }

    public void setTxtCameriereOrdine(TextView txtCameriereOrdine) {
        this.txtCameriereOrdine = txtCameriereOrdine;
    }

    public MaterialCardView getMaterialCameriere() {
        return materialCameriere;
    }

    public void setMaterialCameriere(MaterialCardView materialCameriere) {
        this.materialCameriere = materialCameriere;
    }

    public int getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(int idTavolo) {
        this.idTavolo = idTavolo;
    }

    public String getCameriere() {
        return cameriere;
    }

    public void setCameriere(String cameriere) {
        this.cameriere = cameriere;
    }




}