package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;

public class PersonaleAdapter extends RecyclerView.Adapter<PersonaleAdapter.PersonaleHolder> {

    private ArrayList<Utente> utenti;
    private Context context;
    private PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner;

    public PersonaleAdapter(ArrayList<Utente> utenti, Context context, PersonaleAdapter.OnPersonaleClickListner onPersonaleClickListner) {
        this.utenti = utenti;
        this.context = context;
        this.onPersonaleClickListner = onPersonaleClickListner;
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
        //holder.txtIdOrdine.setText(Integer.toString(ordini.get(position).getIdOrdine()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
        //return ordini.size();
    }

    class PersonaleHolder extends RecyclerView.ViewHolder{

        TextView txtIdOrdine;
        TextView txtIdCameriere;

        public PersonaleHolder(@NonNull View itemView) {
            super(itemView);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onPersonaleClickListner.onPersonaleClicked(getAdapterPosition());
                }
            });

        }
    }
}

