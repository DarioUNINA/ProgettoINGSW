package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

import android.os.Bundle;

import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.Presenter.UtentePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.PersonaleAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.CreazioneUtenteDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link PersonaleFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class PersonaleFragment extends Fragment {

    private FloatingActionButton addUser, removeUser;

    private AppCompatButton btnAnnullaRimozione, btnConfermaRimozione;
    private RecyclerView listaUtentiRecyclerView;

    private MaterialCardView materialPersonale;

    private Spinner spinner;
    private PersonaleAdapter personaleAdapter;
    private PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner;

    private UtentePresenter utentePresenter;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";


    private String mParam1;
    private String mParam2;

    public PersonaleFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment PersonaleFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static PersonaleFragment newInstance(String param1, String param2) {
        PersonaleFragment fragment = new PersonaleFragment();
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
        View rootView = inflater.inflate(R.layout.fragment_personale, container, false);

        addUser = rootView.findViewById(R.id.btnAddUser);
        removeUser = rootView.findViewById(R.id.removeUser);
        btnAnnullaRimozione = rootView.findViewById(R.id.btnAnnullaRimozioneUser);
        btnConfermaRimozione = rootView.findViewById(R.id.btnConfermaRimozioneUser);
        listaUtentiRecyclerView = (RecyclerView) rootView.findViewById(R.id.listaUtentiRecyclerView);
        materialPersonale = rootView.findViewById(R.id.materialPersonale);
        spinner = rootView.findViewById(R.id.spinnerRuoli);

        utentePresenter = new UtentePresenter(PersonaleFragment.this);
        utentePresenter.getByRistorante(((HomeActivity)getActivity()).getUtente().getIdRistorante());

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        listaUtentiRecyclerView.setLayoutManager(linearLayoutManager);
        listaUtentiRecyclerView.setAdapter(personaleAdapter);

        btnAnnullaRimozione.setVisibility(View.INVISIBLE);
        btnConfermaRimozione.setVisibility(View.INVISIBLE);


        addUser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        removeUser.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                removeUser.setVisibility(View.INVISIBLE);
                addUser.setVisibility(View.INVISIBLE);
                btnAnnullaRimozione.setVisibility(View.VISIBLE);
                btnConfermaRimozione.setVisibility(View.VISIBLE);

                ArrayList<Utente> u = new ArrayList<Utente>();
                u.addAll(personaleAdapter.getUtenti());
                u.add(new Utente());
                u.remove(u.size()-1);
                personaleAdapter.setUtenti(u, true);
            }
        });

        btnAnnullaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                removeUser.setVisibility(View.VISIBLE);
                addUser.setVisibility(View.VISIBLE);
                btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                btnConfermaRimozione.setVisibility(View.INVISIBLE);

                ArrayList<Utente> u = new ArrayList<Utente>();
                u.addAll(personaleAdapter.getUtenti());
                u.add(new Utente());
                u.remove(u.size()-1);
                personaleAdapter.setUtenti(u, false);

            }
        });

        if(((HomeActivity) getActivity()).getUtente().getRuolo() != Ruolo.admin)
            materialPersonale.setVisibility(View.INVISIBLE);


        return rootView;
    }

    public void openDialog(){
        CreazioneUtenteDialog creazioneUtenteDialog = new CreazioneUtenteDialog(this);
        creazioneUtenteDialog.show(getParentFragmentManager(), "NewUser");
    }

    public FloatingActionButton getAddUser() {
        return addUser;
    }

    public void setAddUser(FloatingActionButton addUser) {
        this.addUser = addUser;
    }

    public FloatingActionButton getRemoveUser() {
        return removeUser;
    }

    public void setRemoveUser(FloatingActionButton removeUser) {
        this.removeUser = removeUser;
    }

    public RecyclerView getListaUtentiRecyclerView() {
        return listaUtentiRecyclerView;
    }

    public void setListaUtentiRecyclerView(RecyclerView listaUtentiRecyclerView) {
        this.listaUtentiRecyclerView = listaUtentiRecyclerView;
    }

    public PersonaleAdapter getPersonaleAdapter() {
        return personaleAdapter;
    }

    public void setPersonaleAdapter(PersonaleAdapter personaleAdapter) {
        this.personaleAdapter = personaleAdapter;
        this.listaUtentiRecyclerView.setAdapter(personaleAdapter);
        this.personaleAdapter.notifyDataSetChanged();
    }

    public PersonaleAdapter.OnPersonaleClickListner getOnPersonaleClickListner() {
        return onPersonaleClickListner;
    }

    public void setOnPersonaleClickListner(PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner) {
        this.onPersonaleClickListner = onPersonaleClickListner;
    }

    public UtentePresenter getUtentePresenter() {
        return utentePresenter;
    }

    public void setUtentePresenter(UtentePresenter utentePresenter) {
        this.utentePresenter = utentePresenter;
    }

    public AppCompatButton getBtnAnnullaRimozione() {
        return btnAnnullaRimozione;
    }

    public void setBtnAnnullaRimozione(AppCompatButton btnAnnullaRimozione) {
        this.btnAnnullaRimozione = btnAnnullaRimozione;
    }

    public AppCompatButton getBtnConfermaRimozione() {
        return btnConfermaRimozione;
    }

    public void setBtnConfermaRimozione(AppCompatButton btnConfermaRimozione) {
        this.btnConfermaRimozione = btnConfermaRimozione;
    }

    public MaterialCardView getMaterialPersonale() {
        return materialPersonale;
    }

    public void setMaterialPersonale(MaterialCardView materialPersonale) {
        this.materialPersonale = materialPersonale;
    }
}