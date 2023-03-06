package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.card.MaterialCardView;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.TavoliFragment;

import java.util.ArrayList;

public class TavoliAdapter extends RecyclerView.Adapter<TavoliAdapter.TavoliHolder>{

    private ArrayList<Tavolo> tavoli;
    private Context context;
    private TavoliAdapter.OnTavoliClickListner onTavoliClickListner;

    private TavoliFragment tavoliFragment;

    Boolean flag = false;

    public TavoliAdapter(ArrayList<Tavolo> tavoli, Context context, TavoliAdapter.OnTavoliClickListner onTavoliClickListner, TavoliFragment tavoliFragment) {
        this.tavoli = tavoli;
        this.context = context;
        this.onTavoliClickListner = onTavoliClickListner;
        this.tavoliFragment = tavoliFragment;
    }

    public interface OnTavoliClickListner{
        void onTavoliClicked(int position);
    }

    @NonNull
    @Override
    public TavoliAdapter.TavoliHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_tavolo, parent, false);

        return new TavoliAdapter.TavoliHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull TavoliAdapter.TavoliHolder holder, int position) {
        holder.txtIdTavolo.setText(Integer.toString(tavoli.get(position).getIdTavolo()));
        holder.txtPosti.setText(Integer.toString(tavoli.get(position).getPosti()));


        holder.mcdSelecetd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                HomeActivity activity = (HomeActivity)tavoliFragment.getActivity();
                activity.getGestioneSala().getOrdiniFragment().getOrdineAdapter().setOrdini((ArrayList<Ordine>)tavoli.get(position).getOrdini(), false);
                activity.getGestioneSala().getOrdiniFragment().getIdTavolo().setText(String.valueOf(tavoli.get(position).getIdTavolo()));
                activity.getGestioneSala().getElementiGSFragment().getElementiGSAdapter().setElementi(new ArrayList<Elemento>(), false);
                activity.getGestioneSala().getElementiGSFragment().getTxtTotale().setText("");
                activity.getGestioneSala().getElementiGSFragment().getTxtUnita().setText("");
                activity.getGestioneSala().getOrdiniFragment().setTavoloSelected(tavoli.get(position));
                if(tavoli.get(position).isOccupato())
                    activity.getGestioneSala().getOrdiniFragment().getNomeCameriere().setText(tavoli.get(position).getCameriere());
                else
                    activity.getGestioneSala().getOrdiniFragment().getNomeCameriere().setText("");
            }
        });



        if(tavoli.get(position).isOccupato())
            holder.ringOccupato.setBackgroundTintList(ColorStateList.valueOf(Color.parseColor("red")));
    }

    @Override
    public int getItemCount() {
        return tavoli.size();
    }




    class TavoliHolder extends RecyclerView.ViewHolder{

        MaterialCardView mcdSelecetd, ringOccupato;

        TextView txtPosti, txtIdTavolo;
        public TavoliHolder(@NonNull View itemView) {
            super(itemView);

            mcdSelecetd = itemView.findViewById(R.id.materialCardViewSelected);
            ringOccupato = itemView.findViewById(R.id.ringOccupato);
            txtPosti = itemView.findViewById(R.id.textViewPosti);
            txtIdTavolo = itemView.findViewById(R.id.textViewIdtTavolo);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                }

            });

        }
    }

    public ArrayList<Tavolo> getTavoli() {
        return tavoli;
    }

    public void setTavoli(ArrayList<Tavolo> tavoli) {
        this.tavoli.clear();
        this.tavoli.addAll(tavoli);
        notifyDataSetChanged();
    }




}
