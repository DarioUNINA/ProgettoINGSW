package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.PersonaleFragment;

import java.util.ArrayList;

public class PersonaleAdapter extends RecyclerView.Adapter<PersonaleAdapter.PersonaleHolder> {

    private ArrayList<Utente> utenti;


    private ArrayList<Utente> cancellaUtenti = new ArrayList<Utente>();
    private Context context;
    private PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner;
    private PersonaleFragment personaleFragment;

    Boolean modRimozione;

    public PersonaleAdapter(ArrayList<Utente> utenti, Context context, PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner, PersonaleFragment personaleFragment, Boolean modRimozione) {
        this.utenti = utenti;
        this.context = context;
        this.onPersonaleClickListner = onPersonaleClickListner;
        this.modRimozione = modRimozione;
        this.personaleFragment = personaleFragment;
    }

    public interface OnPersonaleClickListner{
        void onPersonaleClicked(int position);
    }

    @NonNull
    @Override
    public PersonaleAdapter.PersonaleHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_elenco_personale, parent, false);

        return new PersonaleAdapter.PersonaleHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull PersonaleAdapter.PersonaleHolder holder, int position) {
        if(modRimozione)
            holder.personaleCheckBox.setVisibility(View.VISIBLE);
        else
            holder.personaleCheckBox.setVisibility(View.INVISIBLE);

        holder.txtNomeUtente.setText(utenti.get(position).getUsername());
        holder.txtRuolo.setText(utenti.get(position).getRuolo().toString());




        holder.personaleCheckBox.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(((CheckBox)view).isChecked())
                    cancellaUtenti.add(utenti.get(position));
                else
                    cancellaUtenti.remove(utenti.get(position));
            }
        });

    }

    @Override
    public int getItemCount() {
        return utenti.size();
    }

    class PersonaleHolder extends RecyclerView.ViewHolder{

        TextView txtNomeUtente, txtRuolo;
        CheckBox personaleCheckBox;



        public PersonaleHolder(@NonNull View itemView) {
            super(itemView);

            personaleCheckBox = itemView.findViewById(R.id.chechBoxPersonale);
            txtNomeUtente = itemView.findViewById(R.id.txtNomeUtente);
            txtRuolo = itemView.findViewById(R.id.txtRuolo);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if(txtRuolo.getText().toString() == "cameriere"){
                        ((HomeActivity)personaleFragment.getActivity()).
                                getGestionePersonaleFragment().getStatisticheFragment().
                                getTxtNomeCameriere().setText(txtNomeUtente.getText().toString());

                        ((HomeActivity)personaleFragment.getActivity()).
                                getGestionePersonaleFragment().getStatisticheFragment().setUtenteSelected(utenti.get(getAdapterPosition()));


                        String dataFrom = ((HomeActivity)personaleFragment.getActivity()).getGestionePersonaleFragment().getFiltroDataFragment().getTxtFrom().getText().toString();
                        String dataTo = ((HomeActivity)personaleFragment.getActivity()).getGestionePersonaleFragment().getFiltroDataFragment().getTxtTo().getText().toString();
                        OrdinePresenter ordinePresenter = new OrdinePresenter(personaleFragment);
                        ordinePresenter.getOrdiniTotali(txtNomeUtente.getText().toString(), dataFrom, dataTo );
                        ordinePresenter.getIncasso(txtNomeUtente.getText().toString(), dataFrom, dataTo);
                        ((HomeActivity)personaleFragment.getActivity()).getGestionePersonaleFragment().getStatisticheFragment().getTxtGuadagniSimbolo().setVisibility(View.VISIBLE);

                    }else{
                        Toast.makeText(personaleFragment.getActivity(), "Statistiche non disponibili", Toast.LENGTH_SHORT).show();
                    }
                }
            });
        }
    }

    public ArrayList<Utente> getUtenti() {
        return utenti;
    }

    public void setUtenti(ArrayList<Utente> utenti) {
        this.utenti = utenti;
    }

    public ArrayList<Utente> getCancellaUtenti() {
        return cancellaUtenti;
    }

    public void setCancellaUtenti(ArrayList<Utente> cancellaUtenti) {
        this.cancellaUtenti = cancellaUtenti;
    }

    public void setUtenti(ArrayList<Utente> utenti, boolean modRimozione) {
        this.modRimozione = modRimozione;
        utenti.clear();
        utenti.addAll(utenti);
        notifyDataSetChanged();
    }
}

